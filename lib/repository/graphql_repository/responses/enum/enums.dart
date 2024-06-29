import 'package:anilist_client/values/enum.dart';
import 'package:flutter/material.dart';

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
  finished("Finished"),
  releasing("Releasing"),
  notYetReleased("Not Yet Released"),
  cancelled("Cancelled"),
  hiatus("Hiatus"),
  none("N/A");

  final String display;

  bool get isFinished => this == MediaStatus.finished;

  const MediaStatus(this.display);

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

enum MediaSource with EnumMixin {
  /// An original production not based of another work
  original("Original"),

  /// Asian comic book
  manga("Manga"),

  /// Written work published in volumes
  lightNovel("Light Novel"),

  /// Video game driven primary by text and narrative
  visualNovel("Visual Novel"),

  /// Video game
  videoGame("Video Game"),

  /// Other
  other("Other"),

  /// Version 2+ only. Written works not published in volumes
  novel("Novel"),

  /// Version 2+ only. Self-published works
  doujinshi("Doujinshi"),

  /// Version 2+ only. Japanese Anime
  anime("Anime"),

  /// Version 3 only. Written works published online
  webNovel("Web Novel"),

  /// Version 3 only. Live action media such as movies or TV show
  liveAction("Live Action"),

  /// Version 3 only. Games excluding video games
  game("Game"),

  /// Version 3 only. Comics excluding manga
  comic("Comic"),

  /// Version 3 only. Multimedia project
  multimediaProject("Multimedia Project"),

  /// Version 3 only. Picture book
  pictureBook("Picture Book"),
  none("N/A");

  final String display;

  const MediaSource(this.display);

  factory MediaSource.fromString(String value) {
    switch (value.toLowerCase()) {
      case "original":
        return MediaSource.original;
      case "manga":
        return MediaSource.manga;
      case "light_novel":
        return MediaSource.lightNovel;
      case "visual_novel":
        return MediaSource.visualNovel;
      case "video_game":
        return MediaSource.videoGame;
      case "other":
        return MediaSource.other;
      case "novel":
        return MediaSource.novel;
      case "doujinshi":
        return MediaSource.doujinshi;
      case "anime":
        return MediaSource.anime;
      case "web_novel":
        return MediaSource.webNovel;
      case "live_action":
        return MediaSource.liveAction;
      case "game":
        return MediaSource.game;
      case "comic":
        return MediaSource.comic;
      case "multimedia_project":
        return MediaSource.multimediaProject;
      case "picture_book":
        return MediaSource.pictureBook;

      default:
        return MediaSource.none;
    }
  }
}

enum MediaSeason with EnumMixin {
  /// Months December to February
  winter("Winter"),

  /// Months March to May
  spring("Spring"),

  /// Months June to August
  summer("Summer"),

  /// Months September to November
  fall("Fall"),
  none('N/A');

  final String display;

  const MediaSeason(this.display);

  factory MediaSeason.fromString(String season) {
    switch (season.toLowerCase()) {
      case 'winter':
        return MediaSeason.winter;
      case 'spring':
        return MediaSeason.spring;
      case 'summer':
        return MediaSeason.summer;
      case 'fall':
        return MediaSeason.fall;
      default:
        return MediaSeason.none;
    }
  }
}

enum MediaRankType with EnumMixin {
  /// Ranking is based on the media's ratings/score
  rated(Icons.star_rounded, Color(0xffe0a211)),

  /// Ranking is based on the media's popularity
  popular(Icons.favorite_rounded, Color(0xffe72f17)),

  none(Icons.block_rounded, Colors.grey);

  final IconData icon;
  final Color iconColor;

  const MediaRankType(
    this.icon,
    this.iconColor,
  );

  factory MediaRankType.fromString(String rank) {
    switch (rank.toLowerCase()) {
      case 'rated':
        return MediaRankType.rated;
      case 'popular':
        return MediaRankType.popular;
      default:
        return MediaRankType.none;
    }
  }
}

enum MediaRelationType with EnumMixin {
  /// An adaption of this media into a different format
  adaptation("Adaptation"),

  /// An alternative version of the media with a different primary focus
  spinOff("Spin off"),

  ///  Released before the relation
  prequel("Prequel"),

  /// Released after the relation
  sequel("Sequel"),

  ///  The media a side story is from
  parent("Parent"),

  /// A side story of the parent media
  sideStory("Side Story"),

  /// Shares at least 1 character
  character("Character"),

  /// A shortened and summarized version
  summary("Summary"),

  /// An alternative version of the same media
  alternative("Alternative"),

  /// Other
  other("Other"),

  /// Version 2 only. The source material the media was adapted from
  source("Source"),

  ///  Version 2 only.
  compilation("Compilation"),

  /// Version 2 only.
  contains("Contains"),

  none("N/A");

  final String display;

  const MediaRelationType(this.display);

  factory MediaRelationType.fromString(String type) {
    switch (type.toLowerCase()) {
      case 'adaptation':
        return MediaRelationType.adaptation;
      case 'prequel':
        return MediaRelationType.prequel;
      case 'sequel':
        return MediaRelationType.sequel;
      case 'parent':
        return MediaRelationType.parent;
      case 'side_story':
        return MediaRelationType.sideStory;
      case 'character':
        return MediaRelationType.character;
      case 'summary':
        return MediaRelationType.summary;
      case 'alternative':
        return MediaRelationType.alternative;
      case 'spin_off':
        return MediaRelationType.spinOff;
      case 'other':
        return MediaRelationType.other;
      case 'source':
        return MediaRelationType.source;
      case 'compilation':
        return MediaRelationType.compilation;
      case 'contains':
        return MediaRelationType.contains;

      default:
        return MediaRelationType.none;
    }
  }
}

enum CharacterRole with EnumMixin {
  /// A primary character role in the media
  main("Main"),

  ///  A supporting character role in the media
  supporting("Supporting"),

  ///  A background character in the media
  background("Background"),
  none("N/A");

  final String display;

  const CharacterRole(this.display);

  factory CharacterRole.fromString(String role) {
    switch (role.toLowerCase()) {
      case 'main':
        return CharacterRole.main;
      case 'supporting':
        return CharacterRole.supporting;
      case 'background':
        return CharacterRole.background;
      default:
        return CharacterRole.none;
    }
  }
}

enum MediaFormat with EnumMixin {
  /// Anime broadcast on television
  tv("TV"),

  /// Anime which are under 15 minutes in length and broadcast on television
  tvShort("TV Short"),

  /// Anime movies with a theatrical release
  movie("Movie"),

  /// Special episodes that have been included in DVD/Blu-ray releases, picture dramas, pilots, etc
  special("Special"),

  /// (Original Video Animation) Anime that have been released directly on DVD/Blu-ray without originally going through a theatrical release or television broadcast
  ova("OVA"),

  /// (Original Net Animation) Anime that have been originally released online or are only available through streaming services.
  ona("ONA"),

  /// Short anime released as a music video
  music("Music"),

  /// Professionally published manga with more than one chapter
  manga("Manga"),

  /// Written books released as a series of light novels
  novel("Novel"),

  /// Manga with just one chapter
  oneShot("One Shot"),
  none("N/A");

  final String display;

  const MediaFormat(this.display);

  factory MediaFormat.fromString(String value) {
    switch (value.toLowerCase()) {
      case "tv":
        return MediaFormat.tv;
      case "tv_short":
        return MediaFormat.tvShort;
      case "movie":
        return MediaFormat.movie;
      case "special":
        return MediaFormat.special;
      case "ova":
        return MediaFormat.ova;
      case "ona":
        return MediaFormat.ona;
      case "music":
        return MediaFormat.music;
      case "manga":
        return MediaFormat.manga;
      case "novel":
        return MediaFormat.novel;
      case "one_shot":
        return MediaFormat.oneShot;

      default:
        return MediaFormat.none;
    }
  }
}
