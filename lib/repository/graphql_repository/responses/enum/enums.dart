enum MediaType with EnumMixin {
  anime,
  manga,
  none;

  factory MediaType.fromString(String value) {
    switch (value.toLowerCase()) {
      case "anime":
        return MediaType.anime;
      case "manga":
        return MediaType.manga;
      default:
        return MediaType.none;
    }
  }
}

enum ExternalLinkType with EnumMixin {
  info,
  streaming,
  social,
  none;

  factory ExternalLinkType.fromString(String value) {
    switch (value.toLowerCase()) {
      case "info":
        return ExternalLinkType.info;
      case "streaming":
        return ExternalLinkType.streaming;
      case "social":
        return ExternalLinkType.social;
      default:
        return ExternalLinkType.none;
    }
  }
}

enum TrailerSite with EnumMixin {
  youtube,
  dailymotion,
  none;

  factory TrailerSite.fromString(String value) {
    switch (value.toLowerCase()) {
      case "youtube":
        return TrailerSite.youtube;
      case "dailymotion":
        return TrailerSite.dailymotion;
      default:
        return TrailerSite.none;
    }
  }
}

enum MediaStatus with EnumMixin {
  finished,
  releasing,
  notYetReleased,
  cancelled,
  hiatus,
  none;

  factory MediaStatus.fromString(String value) {
    switch (value.toLowerCase()) {
      case "finished":
        return MediaStatus.finished;
      case "releasing":
        return MediaStatus.releasing;
      case "not_yet_released":
        return MediaStatus.notYetReleased;
      case "cancelled":
        return MediaStatus.cancelled;
      case "hiatus":
        return MediaStatus.hiatus;
      default:
        return MediaStatus.none;
    }
  }
}

mixin EnumMixin on Enum {
  @override
  String toString() => super.toString().split('.').first.toUpperCase();
}
