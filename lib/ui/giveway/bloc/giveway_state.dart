import 'package:drop_game/domain/dtos/giveway_dto.dart';

abstract class GivewayState {}

class GivewayInitialState extends GivewayState {}

class GivewayLoadingState extends GivewayState {}

class GivewayLoadedState extends GivewayState {
  final List<GiveawayDto> giveaways;

  GivewayLoadedState(this.giveaways);
}

class GivewayErrorState extends GivewayState {
  final String message;

  GivewayErrorState(this.message);
}

