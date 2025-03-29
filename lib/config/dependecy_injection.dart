import 'package:dio/dio.dart';
import 'package:drop_game/data/services/giveway_service.dart';
import 'package:drop_game/domain/interfaces/i_giveway_service.dart';
import 'package:get_it/get_it.dart';

final injection = GetIt.instance;

setupInjection() {
  injection.registerSingleton(Dio());
  injection.registerSingleton<IGivewayService>(GivewayService());
}
