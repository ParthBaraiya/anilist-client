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
  final Title? title;
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
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
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

final searchAnimeDummy = SearchAnimeResponse.fromJson({
  "pageInfo": {"hasNextPage": true},
  "media": [
    {
      "id": 86355,
      "title": {"userPreferred": "Tensei Shitara Slime Datta Ken"},
      "type": "MANGA",
      "format": "NOVEL",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/bx86355-pGwmLqVTwwE4.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/bx86355-pGwmLqVTwwE4.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/bx86355-pGwmLqVTwwE4.jpg",
        "color": "#c9e4f1"
      },
      "genres": ["Adventure", "Comedy", "Fantasy"]
    },
    {
      "id": 86399,
      "title": {"userPreferred": "Tensei Shitara Slime Datta Ken"},
      "type": "MANGA",
      "format": "MANGA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/nx86399-NwbRFVh5koqc.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/nx86399-NwbRFVh5koqc.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/nx86399-NwbRFVh5koqc.jpg",
        "color": "#50bbf1"
      },
      "genres": ["Action", "Adventure", "Comedy", "Fantasy"]
    },
    {
      "id": 101280,
      "title": {"userPreferred": "Tensei Shitara Slime Datta Ken"},
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx101280-ezBXqEHi8pg0.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx101280-ezBXqEHi8pg0.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx101280-ezBXqEHi8pg0.jpg",
        "color": "#5daef1"
      },
      "genres": ["Action", "Adventure", "Comedy", "Fantasy"]
    },
    {
      "id": 110029,
      "title": {"userPreferred": "Tenchura! Tensei Shitara Slime Datta Ken"},
      "type": "MANGA",
      "format": "MANGA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/bx110029-44tyc6sdCtdf.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/bx110029-44tyc6sdCtdf.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/bx110029-44tyc6sdCtdf.jpg",
        "color": "#f1860d"
      },
      "genres": ["Comedy", "Fantasy", "Slice of Life"]
    },
    {
      "id": 146503,
      "title": {
        "userPreferred": "Tensei Shitara Slime Datta Ken: Sukuwareru Ramiris"
      },
      "type": "ANIME",
      "format": "ONA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/b146503-7YahVCQ9T039.png",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/b146503-7YahVCQ9T039.png",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/b146503-7YahVCQ9T039.png",
        "color": "#e4d65d"
      },
      "genres": ["Comedy", "Fantasy"]
    },
    {
      "id": 116742,
      "title": {
        "userPreferred": "Tensei Shitara Slime Datta Ken 2nd Season Part 2"
      },
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx116742-jn0dW23ftehq.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx116742-jn0dW23ftehq.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx116742-jn0dW23ftehq.jpg",
        "color": "#e4a15d"
      },
      "genres": ["Action", "Adventure", "Comedy", "Fantasy"]
    },
    {
      "id": 156822,
      "title": {"userPreferred": "Tensei Shitara Slime Datta Ken 3rd Season"},
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx156822-Jzo2ITWgm4kM.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx156822-Jzo2ITWgm4kM.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx156822-Jzo2ITWgm4kM.jpg",
        "color": "#e4785d"
      },
      "genres": ["Action", "Adventure", "Comedy", "Fantasy"]
    },
    {
      "id": 108511,
      "title": {"userPreferred": "Tensei Shitara Slime Datta Ken 2nd Season"},
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx108511-PufFordLNyIb.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx108511-PufFordLNyIb.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx108511-PufFordLNyIb.jpg",
        "color": "#f16b50"
      },
      "genres": ["Action", "Adventure", "Comedy", "Fantasy"]
    },
    {
      "id": 106509,
      "title": {"userPreferred": "Tensei Shitara Slime Datta Ken OVA"},
      "type": "ANIME",
      "format": "OVA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx106509-nTJyMJKbvRFn.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx106509-nTJyMJKbvRFn.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx106509-nTJyMJKbvRFn.jpg",
        "color": "#a1c9e4"
      },
      "genres": ["Action", "Adventure", "Comedy", "Ecchi", "Fantasy"]
    },
    {
      "id": 166828,
      "title": {"userPreferred": "Henjin no Salad Bowl"},
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx166828-iDbw5IGYR40D.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx166828-iDbw5IGYR40D.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx166828-iDbw5IGYR40D.jpg",
        "color": "#4393f1"
      },
      "genres": ["Comedy", "Fantasy", "Slice of Life"]
    },
    {
      "id": 135589,
      "title": {"userPreferred": "Tempura"},
      "type": "ANIME",
      "format": "MOVIE",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx135589-VaSz7qHUZ1ku.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx135589-VaSz7qHUZ1ku.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx135589-VaSz7qHUZ1ku.jpg",
        "color": "#d6a16b"
      },
      "genres": ["Horror"]
    },
    {
      "id": 117662,
      "title": {"userPreferred": "Tensei Akujo no Kuro Rekishi"},
      "type": "MANGA",
      "format": "MANGA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/bx117662-kwZbHouWQANg.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/bx117662-kwZbHouWQANg.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/bx117662-kwZbHouWQANg.jpg",
        "color": "#f1c943"
      },
      "genres": ["Comedy", "Fantasy", "Romance"]
    },
    {
      "id": 144545,
      "title": {"userPreferred": "Henjin no Salad Bowl"},
      "type": "MANGA",
      "format": "NOVEL",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/bx144545-AprsqAD0qJYU.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/bx144545-AprsqAD0qJYU.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/bx144545-AprsqAD0qJYU.jpg",
        "color": "#50c9f1"
      },
      "genres": ["Comedy", "Fantasy", "Slice of Life"]
    },
    {
      "id": 160447,
      "title": {"userPreferred": "Temple"},
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx160447-we52M5P85oaJ.png",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx160447-we52M5P85oaJ.png",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx160447-we52M5P85oaJ.png",
        "color": "#50aef1"
      },
      "genres": ["Comedy", "Drama", "Ecchi", "Romance", "Slice of Life"]
    },
    {
      "id": 174914,
      "title": {"userPreferred": "Tensei Akujo no Kuro Rekishi"},
      "type": "ANIME",
      "format": "TV",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx174914-NKndgEJe1Stp.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx174914-NKndgEJe1Stp.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx174914-NKndgEJe1Stp.jpg",
        "color": null
      },
      "genres": ["Comedy", "Fantasy", "Romance"]
    },
    {
      "id": 150685,
      "title": {"userPreferred": "Henjin no Salad Bowl @comic"},
      "type": "MANGA",
      "format": "MANGA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/bx150685-Id8GoFoXKkCm.png",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/bx150685-Id8GoFoXKkCm.png",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/bx150685-Id8GoFoXKkCm.png",
        "color": "#f1bb50"
      },
      "genres": ["Comedy", "Fantasy", "Slice of Life"]
    },
    {
      "id": 11561,
      "title": {"userPreferred": "Sougen no Ko Tenguri"},
      "type": "ANIME",
      "format": "MOVIE",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/11561.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/11561.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/11561.jpg",
        "color": "#e4a143"
      },
      "genres": ["Adventure", "Drama"]
    },
    {
      "id": 96021,
      "title": {"userPreferred": "Tensui"},
      "type": "MANGA",
      "format": "MANGA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/b96021-uz4neAN0mVJ3.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/b96021-uz4neAN0mVJ3.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/b96021-uz4neAN0mVJ3.jpg",
        "color": "#fee428"
      },
      "genres": ["Slice of Life", "Supernatural"]
    },
    {
      "id": 166381,
      "title": {"userPreferred": "Genjitsu no Rimuru: SUNSHINE in the SLIME"},
      "type": "ANIME",
      "format": "ONA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/large\/bx166381-nHd6sLpdC7Ta.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/medium\/bx166381-nHd6sLpdC7Ta.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/anime\/cover\/small\/bx166381-nHd6sLpdC7Ta.jpg",
        "color": "#93f1ff"
      },
      "genres": ["Comedy", "Fantasy"]
    },
    {
      "id": 150291,
      "title": {
        "userPreferred": "Tensei Shitara Slime Datta Ken: Clayman REVENGE"
      },
      "type": "MANGA",
      "format": "MANGA",
      "coverImage": {
        "extraLarge":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/large\/bx150291-IlSiBDbXnhIL.jpg",
        "large":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/medium\/bx150291-IlSiBDbXnhIL.jpg",
        "medium":
            "https:\/\/s4.anilist.co\/file\/anilistcdn\/media\/manga\/cover\/small\/bx150291-IlSiBDbXnhIL.jpg",
        "color": "#e4505d"
      },
      "genres": ["Comedy", "Fantasy", "Mystery", "Supernatural"]
    }
  ]
});
