import 'package:drop_game/domain/dtos/giveway_dto.dart';

abstract interface class IGivewayService {
  Future<List<GiveawayDto>> getGiveaways();

  Future<List<GiveawayDto>> getGiveawaysByPlatform(String platform);

  Future<List<GiveawayDto>> getGiveawaysByType(String type);

  Future<List<GiveawayDto>> getGiveawaysByPlatformAndType(String platform, String type);

  Future<GiveawayDto> getGiveawayById(String id);
}
