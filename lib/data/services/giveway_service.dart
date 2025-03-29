import 'package:dio/dio.dart';
import 'package:drop_game/config/dependecy_injection.dart';
import 'package:drop_game/domain/dtos/giveway_dto.dart';
import 'package:drop_game/domain/interfaces/i_giveway_service.dart';
import 'package:drop_game/utils/constants.dart';

class GivewayService implements IGivewayService {
  final Dio dio = injection.get<Dio>();

  @override
  Future<List<GiveawayDto>> getGiveaways() async {
    try {
      final response = await dio.get("$baseUrl/giveaways");
      return response.data.map((e) => GiveawayDto.fromJson(e)).toList();
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<GiveawayDto>> getGiveawaysByPlatform(String platform) async {
    try {
      final response = await dio.get("$baseUrl/giveaways?platform=$platform");
      return response.data.map((e) => GiveawayDto.fromJson(e)).toList();
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<GiveawayDto>> getGiveawaysByPlatformAndType(String platform, String type) async {
    try {
      final response = await dio.get("$baseUrl/giveaways?platform=$platform&type=$type");
      return response.data.map((e) => GiveawayDto.fromJson(e)).toList();
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<GiveawayDto>> getGiveawaysByType(String type) async {
    try {
      final response = await dio.get("$baseUrl/giveaways?type=$type");
      return response.data.map((e) => GiveawayDto.fromJson(e)).toList();
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  Future<GiveawayDto> getGiveawayById(String id) async {
    try {
      final response = await dio.get("$baseUrl/giveaways?id=$id");
      return GiveawayDto.fromJson(response.data);
    } on Exception catch (e) {
      rethrow;
    }
  }
}
