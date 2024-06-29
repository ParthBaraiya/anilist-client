import 'package:anilist_client/repository/graphql_repository/responses/common/cover_image.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/page_info.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/title.dart';
import 'package:anilist_client/repository/graphql_repository/responses/enum/enums.dart';

class SearchAnimeResponse {
  final PageInfo? pageInfo;
  final List<SearchedAnime>? media;

  SearchAnimeResponse({
    this.pageInfo,
    this.media,
  });

  factory SearchAnimeResponse.fromJson(Map<String, dynamic> json) =>
      SearchAnimeResponse(
        pageInfo: json["pageInfo"] == null
            ? null
            : PageInfo.fromJson(json["pageInfo"]),
        media: json["media"] == null
            ? []
            : List<SearchedAnime>.from(
                json["media"]!.map((x) => SearchedAnime.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pageInfo": pageInfo?.toJson(),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
      };
}

class SearchedAnime {
  final int? id;
  final MediaTitle? title;
  final MediaType type;
  final String? format;
  final CoverImage? coverImage;
  final List<String>? genres;

  SearchedAnime({
    required this.id,
    required this.title,
    required this.type,
    required this.format,
    required this.coverImage,
    required this.genres,
  });

  factory SearchedAnime.fromJson(Map<String, dynamic> json) => SearchedAnime(
        id: json["id"],
        title:
            json["title"] == null ? null : MediaTitle.fromJson(json["title"]),
        type: MediaType.fromString('${json['type']}'),
        format: json["format"],
        coverImage: json["coverImage"] == null
            ? null
            : CoverImage.fromJson(json["coverImage"]),
        genres: json["genres"] == null
            ? []
            : List<String>.from(json["genres"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title?.toJson(),
        "type": '$type',
        "format": format,
        "coverImage": coverImage?.toJson(),
        "genres":
            genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
      };
}
