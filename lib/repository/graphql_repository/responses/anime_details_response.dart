import 'package:anilist_client/repository/graphql_repository/responses/common/anilist_date.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/cover_image.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/external_link.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/title.dart';
import 'package:anilist_client/repository/graphql_repository/responses/enum/enums.dart';

class AnimeDetails {
  final int? id;
  final int? idMal;
  final Title? title;
  final MediaType? type;
  final String? format;
  final MediaStatus? status;
  final String? description;
  final AniListDate? startDate;
  final AniListDate? endDate;
  final String? season;
  final int? seasonYear;
  final int? seasonInt;
  final int? episodes;
  final int? duration;
  final dynamic chapters;
  final dynamic volumes;
  final String? countryOfOrigin;
  final bool? isLicensed;
  final String? source;
  final String? hashtag;
  final Trailer? trailer;
  final int? updatedAt;
  final CoverImage? coverImage;
  final String? bannerImage;
  final List<String>? genres;
  final List<String>? synonyms;
  final int? averageScore;
  final int? meanScore;
  final int? popularity;
  final bool? isLocked;
  final int? trending;
  final int? favourites;
  final List<Tag>? tags;
  final Relations? relations;
  final Characters? characters;
  final Studios? studios;
  final bool? isFavourite;
  final bool? isAdult;
  final dynamic nextAiringEpisode;
  final AiringSchedule? airingSchedule;
  final List<ExternalLink>? externalLinks;
  final String? siteUrl;

  AnimeDetails({
    this.id,
    this.idMal,
    this.title,
    this.type,
    this.format,
    this.status,
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
    this.source,
    this.hashtag,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.bannerImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
    this.trending,
    this.favourites,
    this.tags,
    this.relations,
    this.characters,
    this.studios,
    this.isFavourite,
    this.isAdult,
    this.nextAiringEpisode,
    this.airingSchedule,
    this.externalLinks,
    this.siteUrl,
  });

  factory AnimeDetails.fromJson(Map<String, dynamic> json) => AnimeDetails(
        id: json["id"],
        idMal: json["idMal"],
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        type: MediaType.fromString('${json["type"]}'),
        format: json["format"],
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
        source: json["source"],
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
        synonyms: json["synonyms"] == null
            ? []
            : List<String>.from(json["synonyms"]!.map((x) => x)),
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
      );

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
        "genres":
            genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
        "synonyms":
            synonyms == null ? [] : List<dynamic>.from(synonyms!.map((x) => x)),
        "averageScore": averageScore,
        "meanScore": meanScore,
        "popularity": popularity,
        "isLocked": isLocked,
        "trending": trending,
        "favourites": favourites,
        "tags": tags == null
            ? []
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
        "relations": relations?.toJson(),
        "characters": characters?.toJson(),
        "studios": studios?.toJson(),
        "isFavourite": isFavourite,
        "isAdult": isAdult,
        "nextAiringEpisode": nextAiringEpisode,
        "airingSchedule": airingSchedule?.toJson(),
        "externalLinks": externalLinks == null
            ? []
            : List<dynamic>.from(externalLinks!.map((x) => x.toJson())),
        "siteUrl": siteUrl,
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
  final List<MediaCharacter>? nodes;

  Characters({
    this.nodes,
  });

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        nodes: json["nodes"] == null
            ? []
            : List<MediaCharacter>.from(
                json["nodes"]!.map((x) => MediaCharacter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nodes": nodes == null
            ? []
            : List<dynamic>.from(nodes!.map((x) => x.toJson())),
      };
}

class MediaCharacter {
  final int? id;
  final Name? name;
  final String? gender;
  final String? age;
  final Image? image;

  MediaCharacter({
    this.id,
    this.name,
    this.gender,
    this.age,
    this.image,
  });

  factory MediaCharacter.fromJson(Map<String, dynamic> json) => MediaCharacter(
        id: json["id"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        gender: json["gender"],
        age: json["age"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name?.toJson(),
        "gender": gender,
        "age": age,
        "image": image?.toJson(),
      };
}

class Image {
  final String? large;
  final String? medium;

  Image({
    this.large,
    this.medium,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        large: json["large"],
        medium: json["medium"],
      );

  Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
      };
}

class Name {
  final String? first;
  final dynamic middle;
  final String? last;
  final String? full;
  final String? native;
  final String? userPreferred;

  Name({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.userPreferred,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        first: json["first"],
        middle: json["middle"],
        last: json["last"],
        full: json["full"],
        native: json["native"],
        userPreferred: json["userPreferred"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "middle": middle,
        "last": last,
        "full": full,
        "native": native,
        "userPreferred": userPreferred,
      };
}

class Relations {
  final List<MediaRelation>? nodes;

  Relations({
    this.nodes,
  });

  factory Relations.fromJson(Map<String, dynamic> json) => Relations(
        nodes: json["nodes"] == null
            ? []
            : List<MediaRelation>.from(
                json["nodes"]!.map((x) => MediaRelation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nodes": nodes == null
            ? []
            : List<dynamic>.from(nodes!.map((x) => x.toJson())),
      };
}

class MediaRelation {
  final Title? title;
  final MediaType? type;
  final String? format;
  final MediaStatus? status;
  final String? description;
  final CoverImage? coverImage;
  final String? bannerImage;
  final String? siteUrl;

  MediaRelation({
    this.title,
    this.type,
    this.format,
    this.status,
    this.description,
    this.coverImage,
    this.bannerImage,
    this.siteUrl,
  });

  factory MediaRelation.fromJson(Map<String, dynamic> json) => MediaRelation(
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        type: MediaType.fromString('${json["type"]}'),
        format: json["format"],
        status: MediaStatus.fromString('${json["status"]}'),
        description: json["description"],
        coverImage: json["coverImage"] == null
            ? null
            : CoverImage.fromJson(json["coverImage"]),
        bannerImage: json["bannerImage"],
        siteUrl: json["siteUrl"],
      );

  Map<String, dynamic> toJson() => {
        "title": title?.toJson(),
        "type": '$type',
        "format": format,
        "status": '$status',
        "description": description,
        "coverImage": coverImage?.toJson(),
        "bannerImage": bannerImage,
        "siteUrl": siteUrl,
      };
}

class Studios {
  final List<MediaStudio>? nodes;

  Studios({
    this.nodes,
  });

  factory Studios.fromJson(Map<String, dynamic> json) => Studios(
        nodes: json["nodes"] == null
            ? []
            : List<MediaStudio>.from(
                json["nodes"]!.map((x) => MediaStudio.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nodes": nodes == null
            ? []
            : List<dynamic>.from(nodes!.map((x) => x.toJson())),
      };
}

class MediaStudio {
  final int? id;
  final String? name;
  final bool? isAnimationStudio;
  final String? siteUrl;

  MediaStudio({
    this.id,
    this.name,
    this.isAnimationStudio,
    this.siteUrl,
  });

  factory MediaStudio.fromJson(Map<String, dynamic> json) => MediaStudio(
        id: json["id"],
        name: json["name"],
        isAnimationStudio: json["isAnimationStudio"],
        siteUrl: json["siteUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isAnimationStudio": isAnimationStudio,
        "siteUrl": siteUrl,
      };
}

class Tag {
  final int? id;
  final String? name;
  final bool? isAdult;

  Tag({
    this.id,
    this.name,
    this.isAdult,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
        isAdult: json["isAdult"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isAdult": isAdult,
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
