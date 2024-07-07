import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/anilist_date.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/cover_image.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/entity_image.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/entity_name.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/external_link.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/title.dart';
import 'package:anilist_client/repository/graphql_repository/responses/enum/enums.dart';
import 'package:anilist_client/values/enum.dart';
import 'package:flutter/material.dart';

class MediaDetails {
  // Metadata...
  final int? id;
  final int? idMal;
  final MediaTitle? title;
  final MediaType type; // TODO(parth): Add this to UI.
  final MediaFormat format;
  final MediaStatus status;
  final String? description;
  final AniListDate? startDate;
  final AniListDate? endDate;
  final String? countryOfOrigin; // TODO(parth): Add this to UI.
  final bool? isLicensed; // TODO(parth): Add this to UI.
  final MediaSource source;
  final String? hashtag;
  final int? updatedAt; // No need to include this...
  final CoverImage? coverImage;
  final String? bannerImage; // No Need to include this...
  final List<String> genres;
  final List<String> synonyms;
  final int? averageScore;
  final int? meanScore;
  final int? popularity; // TODO(parth): Add this to UI.
  final int? trending; // TODO(parth): Add this to UI.
  final int? favourites; // TODO(parth): Add this to UI.
  final List<Tag> tags; // TODO(parth): Add this to UI.
  final String? siteUrl; // TODO(parth): Add this to UI.

  // Only for anime...
  final String? season; // TODO(parth): Add this to UI.
  final int? seasonYear; // TODO(parth): Add this to UI.
  final int? seasonInt; // TODO(parth): Add this to UI.
  final int? episodes;
  final Trailer? trailer; // TODO(parth): Add this to UI.

  /// General length of an anime in minutes.
  final int? duration; // TODO(parth): Add this to UI.

  final dynamic nextAiringEpisode; // TODO(parth): Add this to UI.
  final AiringSchedule? airingSchedule; // TODO(parth): Add this to UI.

  // Only for manga or novels...
  final int? chapters;
  final int? volumes;

  final bool? isLocked; // TODO(parth): Add this to UI.
  final Relations? relations;
  final Characters? characters;
  final Studios? studios; // TODO(parth): Add this to UI.
  final bool? isFavourite; // TODO(parth): Add this to UI.
  final bool? isAdult;
  final List<ExternalLink> externalLinks;
  final List<MediaRanking> rankings;
  final MediaStaffDetails? staff;

  MediaDetails({
    this.id,
    this.idMal,
    this.title,
    this.type = MediaType.none,
    this.format = MediaFormat.none,
    this.status = MediaStatus.none,
    this.description,
    this.startDate,
    this.endDate,
    this.season,
    this.seasonYear,
    this.seasonInt,
    this.episodes,
    this.duration,
    this.chapters,
    this.volumes,
    this.countryOfOrigin,
    this.isLicensed,
    this.source = MediaSource.none,
    this.hashtag,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.bannerImage,
    this.genres = const [],
    this.synonyms = const [],
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
    this.trending,
    this.favourites,
    this.tags = const [],
    this.relations,
    this.characters,
    this.studios,
    this.isFavourite,
    this.isAdult,
    this.nextAiringEpisode,
    this.airingSchedule,
    this.externalLinks = const [],
    this.siteUrl,
    this.rankings = const [],
    this.staff,
  });

  factory MediaDetails.fromJson(Map<String, dynamic> json) => MediaDetails(
        id: json["id"],
        idMal: json["idMal"],
        title:
            json["title"] == null ? null : MediaTitle.fromJson(json["title"]),
        type: MediaType.fromString('${json["type"]}'),
        format: MediaFormat.fromString('${json["format"]}'),
        status: MediaStatus.fromString('${json["status"]}'),
        description: json["description"],
        startDate: json["startDate"] == null
            ? null
            : AniListDate.fromJson(json["startDate"]),
        endDate: json["endDate"] == null
            ? null
            : AniListDate.fromJson(json["endDate"]),
        season: json["season"],
        seasonYear: json["seasonYear"],
        seasonInt: json["seasonInt"],
        episodes: json["episodes"],
        duration: json["duration"],
        chapters: json["chapters"],
        volumes: json["volumes"],
        countryOfOrigin: json["countryOfOrigin"],
        isLicensed: json["isLicensed"],
        source: MediaSource.fromString('${json["source"]}'),
        hashtag: json["hashtag"],
        trailer:
            json["trailer"] == null ? null : Trailer.fromJson(json["trailer"]),
        updatedAt: json["updatedAt"],
        coverImage: json["coverImage"] == null
            ? null
            : CoverImage.fromJson(json["coverImage"]),
        bannerImage: json["bannerImage"],
        genres: json["genres"] == null
            ? []
            : List<String>.from(json["genres"]!.map((x) => x)),
        synonyms: (json["synonyms"] as List?)?.cast<String>() ?? [],
        averageScore: json["averageScore"],
        meanScore: json["meanScore"],
        popularity: json["popularity"],
        isLocked: json["isLocked"],
        trending: json["trending"],
        favourites: json["favourites"],
        tags: json["tags"] == null
            ? []
            : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
        relations: json["relations"] == null
            ? null
            : Relations.fromJson(json["relations"]),
        characters: json["characters"] == null
            ? null
            : Characters.fromJson(json["characters"]),
        studios:
            json["studios"] == null ? null : Studios.fromJson(json["studios"]),
        isFavourite: json["isFavourite"],
        isAdult: json["isAdult"],
        nextAiringEpisode: json["nextAiringEpisode"],
        airingSchedule: json["airingSchedule"] == null
            ? null
            : AiringSchedule.fromJson(json["airingSchedule"]),
        externalLinks: json["externalLinks"] == null
            ? []
            : List<ExternalLink>.from(
                json["externalLinks"]!.map((x) => ExternalLink.fromJson(x))),
        siteUrl: json["siteUrl"],
        rankings: json["rankings"] == null
            ? []
            : List<MediaRanking>.from(
                json["rankings"]!.map((x) => MediaRanking.fromJson(x))),
        staff: json["staff"] == null
            ? null
            : MediaStaffDetails.fromJson(json["staff"]),
      );

  MediaSatisfaction get satisfaction =>
      MediaSatisfaction.fromInt(averageScore ?? meanScore ?? 0);

  InlineSpan get typeSpan {
    return TextSpan(
      children: [
        TextSpan(
          text: 'Type: ',
          style: AppConfig.theme.bodyTextStyle,
        ),
        TextSpan(
          text: format.display,
          style: AppConfig.theme.bodyTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  InlineSpan get sourceSpan {
    return TextSpan(
      children: [
        TextSpan(
          text: '\nSource: ',
          style: AppConfig.theme.bodyTextStyle,
        ),
        TextSpan(
          text: source.display,
          style: AppConfig.theme.bodyTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  InlineSpan get statusSpan {
    return TextSpan(
      children: [
        TextSpan(
          text: '\nStatus: ',
          style: AppConfig.theme.bodyTextStyle,
        ),
        TextSpan(
          text: status.display,
          style: AppConfig.theme.bodyTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "idMal": idMal,
        "title": title?.toJson(),
        "type": '$type',
        "format": format,
        "status": '$status',
        "description": description,
        "startDate": startDate?.toJson(),
        "endDate": endDate?.toJson(),
        "season": season,
        "seasonYear": seasonYear,
        "seasonInt": seasonInt,
        "episodes": episodes,
        "duration": duration,
        "chapters": chapters,
        "volumes": volumes,
        "countryOfOrigin": countryOfOrigin,
        "isLicensed": isLicensed,
        "source": source,
        "hashtag": hashtag,
        "trailer": trailer?.toJson(),
        "updatedAt": updatedAt,
        "coverImage": coverImage?.toJson(),
        "bannerImage": bannerImage,
        "genres": genres,
        "synonyms": synonyms,
        "averageScore": averageScore,
        "meanScore": meanScore,
        "popularity": popularity,
        "isLocked": isLocked,
        "trending": trending,
        "favourites": favourites,
        "tags": tags.map((x) => x.toJson()).toList(),
        "relations": relations?.toJson(),
        "characters": characters?.toJson(),
        "studios": studios?.toJson(),
        "isFavourite": isFavourite,
        "isAdult": isAdult,
        "nextAiringEpisode": nextAiringEpisode,
        "airingSchedule": airingSchedule?.toJson(),
        "externalLinks": externalLinks.map((x) => x.toJson()).toList(),
        "siteUrl": siteUrl,
        "staff": staff?.toJson(),
      };
}

class AiringSchedule {
  final List<AiringScheduleNode>? nodes;

  AiringSchedule({
    this.nodes,
  });

  factory AiringSchedule.fromJson(Map<String, dynamic> json) => AiringSchedule(
        nodes: json["nodes"] == null
            ? []
            : List<AiringScheduleNode>.from(
                json["nodes"]!.map((x) => AiringScheduleNode.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nodes": nodes == null
            ? []
            : List<dynamic>.from(nodes!.map((x) => x.toJson())),
      };
}

class AiringScheduleNode {
  final int? id;
  final int? airingAt;
  final int? timeUntilAiring;
  final int? episode;

  AiringScheduleNode({
    this.id,
    this.airingAt,
    this.timeUntilAiring,
    this.episode,
  });

  factory AiringScheduleNode.fromJson(Map<String, dynamic> json) =>
      AiringScheduleNode(
        id: json["id"],
        airingAt: json["airingAt"],
        timeUntilAiring: json["timeUntilAiring"],
        episode: json["episode"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "airingAt": airingAt,
        "timeUntilAiring": timeUntilAiring,
        "episode": episode,
      };
}

class Characters {
  final List<CharacterMeta> edges;

  Characters({
    this.edges = const [],
  });

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        edges: json["edges"] == null
            ? []
            : List<CharacterMeta>.from(
                json["edges"]!.map((x) => CharacterMeta.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges.map((x) => x.toJson()),
      };
}

class CharacterMeta {
  final CharacterRole role;
  final dynamic name;
  final List<dynamic>? voiceActors;
  final List<dynamic>? voiceActorRoles;
  final dynamic favouriteOrder;
  final CharacterDetails? node;

  CharacterMeta({
    this.role = CharacterRole.none,
    this.name,
    this.voiceActors,
    this.voiceActorRoles,
    this.favouriteOrder,
    this.node,
  });

  factory CharacterMeta.fromJson(Map<String, dynamic> json) => CharacterMeta(
        role: CharacterRole.fromString('${json["role"]}'),
        name: json["name"],
        voiceActors: json["voiceActors"] == null
            ? []
            : List<dynamic>.from(json["voiceActors"]!.map((x) => x)),
        voiceActorRoles: json["voiceActorRoles"] == null
            ? []
            : List<dynamic>.from(json["voiceActorRoles"]!.map((x) => x)),
        favouriteOrder: json["favouriteOrder"],
        node: json["node"] == null
            ? null
            : CharacterDetails.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "role": '${role}',
        "name": name,
        "voiceActors": voiceActors == null
            ? []
            : List<dynamic>.from(voiceActors!.map((x) => x)),
        "voiceActorRoles": voiceActorRoles == null
            ? []
            : List<dynamic>.from(voiceActorRoles!.map((x) => x)),
        "favouriteOrder": favouriteOrder,
        "node": node?.toJson(),
      };
}

class CharacterDetails {
  final int? id;
  final EntityName? name;
  final String? gender;
  final String? age;
  final EntityImage? image;

  CharacterDetails({
    this.id,
    this.name,
    this.gender,
    this.age,
    this.image,
  });

  factory CharacterDetails.fromJson(Map<String, dynamic> json) =>
      CharacterDetails(
        id: json["id"],
        name: json["name"] == null ? null : EntityName.fromJson(json["name"]),
        gender: json["gender"],
        age: json["age"],
        image:
            json["image"] == null ? null : EntityImage.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name?.toJson(),
        "gender": gender,
        "age": age,
        "image": image?.toJson(),
      };
}

class Relations {
  final List<MediaRelation> edges;

  Relations({
    this.edges = const [],
  });

  factory Relations.fromJson(Map<String, dynamic> json) => Relations(
        edges: json["edges"] == null
            ? []
            : List<MediaRelation>.from(
                json["edges"]!.map((x) => MediaRelation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges.map((x) => x.toJson()),
      };
}

class MediaRelation {
  final int? id;
  final MediaRelationType relationType;
  final bool? isMainStudio;
  final RelationMedia? node;

  MediaRelation({
    this.id,
    this.relationType = MediaRelationType.none,
    this.isMainStudio,
    this.node,
  });

  factory MediaRelation.fromJson(Map<String, dynamic> json) => MediaRelation(
        id: json["id"],
        relationType: MediaRelationType.fromString('${json["relationType"]}'),
        isMainStudio: json["isMainStudio"],
        node:
            json["node"] == null ? null : RelationMedia.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "relationType": relationType.display,
        "isMainStudio": isMainStudio,
        "node": node?.toJson(),
      };
}

class RelationMedia {
  final int? id;
  final MediaTitle? title;
  final List<String>? genres;
  final MediaType type;
  final MediaStatus status;
  final MediaSource source;
  final AniListDate? startDate;
  final AniListDate? endDate;
  final CoverImage? coverImage;

  RelationMedia({
    this.id,
    this.title,
    this.genres,
    this.type = MediaType.none,
    this.status = MediaStatus.none,
    this.source = MediaSource.none,
    this.startDate,
    this.endDate,
    this.coverImage,
  });

  factory RelationMedia.fromJson(Map<String, dynamic> json) => RelationMedia(
        id: json["id"],
        title:
            json["title"] == null ? null : MediaTitle.fromJson(json["title"]),
        genres: json["genres"] == null
            ? []
            : List<String>.from(json["genres"]!.map((x) => x)),
        type: MediaType.fromString('${json["type"]}'),
        status: MediaStatus.fromString('${json["status"]}'),
        source: MediaSource.fromString('${json["source"]}'),
        startDate: json["startDate"] == null
            ? null
            : AniListDate.fromJson(json["startDate"]),
        endDate: json["endDate"] == null
            ? null
            : AniListDate.fromJson(json["endDate"]),
        coverImage: json["coverImage"] == null
            ? null
            : CoverImage.fromJson(json["coverImage"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title?.toJson(),
        "genres":
            genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
        "type": '$type',
        "status": '$status',
        "source": '$source',
        "startDate": startDate?.toJson(),
        "endDate": endDate?.toJson(),
      };
}

class Date {
  final int? year;
  final int? month;
  final int? day;

  Date({
    this.year,
    this.month,
    this.day,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        year: json["year"],
        month: json["month"],
        day: json["day"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "month": month,
        "day": day,
      };
}

class Tag {
  final int? id;
  final String? name;
  final bool? isAdult;
  final int? rank;
  final String? description;
  final String? category;
  final bool? isGeneralSpoiler;
  final bool? isMediaSpoiler;

  Tag({
    this.id,
    this.name,
    this.isAdult,
    this.rank,
    this.description,
    this.category,
    this.isGeneralSpoiler,
    this.isMediaSpoiler,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
        isAdult: json["isAdult"],
        rank: json["rank"],
        description: json["description"],
        category: json["category"],
        isGeneralSpoiler: json["isGeneralSpoiler"],
        isMediaSpoiler: json["isMediaSpoiler"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isAdult": isAdult,
        "rank": rank,
        "description": description,
        "category": category,
        "isGeneralSpoiler": isGeneralSpoiler,
        "isMediaSpoiler": isMediaSpoiler,
      };
}

class Trailer {
  final String? id;
  final String? site;
  final String? thumbnail;

  Trailer({
    this.id,
    this.site,
    this.thumbnail,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        id: json["id"],
        site: json["site"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "site": site,
        "thumbnail": thumbnail,
      };
}

class MediaRanking {
  final int? id;
  final int? rank;
  final MediaRankType type;
  final MediaFormat format;
  final int? year;
  final MediaSeason season;
  final bool? allTime;
  final String? context;

  MediaRanking({
    this.id,
    this.rank,
    this.type = MediaRankType.none,
    this.format = MediaFormat.none,
    this.year,
    this.season = MediaSeason.none,
    this.allTime,
    this.context,
  });

  factory MediaRanking.fromJson(Map<String, dynamic> json) => MediaRanking(
        id: json["id"],
        rank: json["rank"],
        type: MediaRankType.fromString('${json["type"]}'),
        format: MediaFormat.fromString('${json["format"]}'),
        year: json["year"],
        season: MediaSeason.fromString('${json["season"]}'),
        allTime: json["allTime"],
        context: json["context"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "type": type,
        "format": format,
        "year": year,
        "season": season,
        "allTime": allTime,
        "context": context,
      };
}

class MediaStaffDetails {
  final List<StaffData> edges;

  MediaStaffDetails({
    this.edges = const [],
  });

  factory MediaStaffDetails.fromJson(Map<String, dynamic> json) =>
      MediaStaffDetails(
        edges: json["edges"] == null
            ? []
            : List<StaffData>.from(
                json["edges"]!.map((x) => StaffData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges.map((x) => x.toJson()).toList(),
      };
}

class StaffData {
  final Staff? node;
  final String? role;

  StaffData({
    this.node,
    this.role,
  });

  factory StaffData.fromJson(Map<String, dynamic> json) => StaffData(
        node: json["node"] == null ? null : Staff.fromJson(json["node"]),
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
        "role": role,
      };
}

class Staff {
  final EntityName? name;
  final int? id;
  final EntityImage? image;
  final String? description;

  Staff({
    this.name,
    this.id,
    this.image,
    this.description,
  });

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        name: json["name"] == null ? null : EntityName.fromJson(json["name"]),
        id: json["id"],
        image:
            json["image"] == null ? null : EntityImage.fromJson(json["image"]),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name?.toJson(),
        "id": id,
        "image": image?.toJson(),
        "description": description,
      };
}

class Studios {
  final List<MediaStudioData>? edges;

  Studios({
    this.edges,
  });

  factory Studios.fromJson(Map<String, dynamic> json) => Studios(
        edges: json["edges"] == null
            ? []
            : List<MediaStudioData>.from(
                json["edges"]!.map((x) => MediaStudioData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges == null
            ? []
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class MediaStudioData {
  final bool? isMain;
  final MediaStudio? node;

  MediaStudioData({
    this.isMain,
    this.node,
  });

  factory MediaStudioData.fromJson(Map<String, dynamic> json) =>
      MediaStudioData(
        isMain: json["isMain"],
        node: json["node"] == null ? null : MediaStudio.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "isMain": isMain,
        "node": node?.toJson(),
      };
}

class MediaStudio {
  final int? id;
  final String? name;
  final bool? isFavourite;
  final bool? isAnimationStudio;
  final String? siteUrl;
  final int? favourites;

  MediaStudio({
    this.id,
    this.name,
    this.isFavourite,
    this.isAnimationStudio,
    this.siteUrl,
    this.favourites,
  });

  factory MediaStudio.fromJson(Map<String, dynamic> json) => MediaStudio(
        id: json["id"],
        name: json["name"],
        isFavourite: json["isFavourite"],
        isAnimationStudio: json["isAnimationStudio"],
        siteUrl: json["siteUrl"],
        favourites: json["favourites"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isFavourite": isFavourite,
        "isAnimationStudio": isAnimationStudio,
        "siteUrl": siteUrl,
        "favourites": favourites,
      };
}
