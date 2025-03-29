abstract class GivewayEvent {}

class GetGiveawaysEvent extends GivewayEvent {}

class GetGiveawaysByPlatformEvent extends GivewayEvent {
  final String platform;

  GetGiveawaysByPlatformEvent(this.platform);
}

class GetGiveawayByIdEvent extends GivewayEvent {
  final String id;

  GetGiveawayByIdEvent(this.id);
}
