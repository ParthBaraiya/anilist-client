import 'package:anilist_client/repository/graphql_repository/queries/anime_brief_list_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/repository.dart';
import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';

class MockApiRepository extends ApiRepository {
  final bool mockSearchAPI;
  final bool mockDetailsAPI;

  MockApiRepository.mockAllExcept({
    this.mockSearchAPI = true,
    this.mockDetailsAPI = true,
  });

  MockApiRepository.mockAll()
      : mockSearchAPI = true,
        mockDetailsAPI = true;

  @override
  Future<MediaDetails> getMediaById(MediaDetailsQuery query) {
    return mockDetailsAPI
        ? Future.value(animeDetailsDummy)
        : super.getMediaById(query);
  }

  @override
  Future<SearchAnimeResponse> listMedia(AnimeBriefListQuery query) {
    return mockSearchAPI
        ? Future.value(searchAnimeDummy)
        : super.listMedia(query);
  }
}

final animeDetailsDummy = MediaDetails.fromJson({
  "id": 86355,
  "idMal": 87610,
  "title": {
    "romaji": "Tensei Shitara Slime Datta Ken",
    "english": "That Time I Got Reincarnated as a Slime",
    "native": "転生したらスライムだった件",
    "userPreferred": "Tensei Shitara Slime Datta Ken"
  },
  "type": "MANGA",
  "format": "NOVEL",
  "status": "RELEASING",
  "description":
      "Living alone and never having had a girlfriend, 37-year-old Satoru Mikami is dissatisfied with how his life has turned out. But after dying at the hands of a robber, he awakens to a fresh start in a new world...as a slime monster.\u003cbr\u003e\n\u003cbr\u003e\n(Source: Yen Press)",
  "startDate": {"year": 2014, "month": 5, "day": 30},
  "endDate": {"year": null, "month": null, "day": null},
  "season": null,
  "seasonYear": null,
  "seasonInt": null,
  "episodes": null,
  "duration": null,
  "chapters": null,
  "volumes": null,
  "countryOfOrigin": "JP",
  "isLicensed": true,
  "source": "ORIGINAL",
  "hashtag": null,
  "trailer": null,
  "updatedAt": 1720287608,
  "coverImage": {
    "extraLarge":
        "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx86355-pGwmLqVTwwE4.jpg",
    "large":
        "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx86355-pGwmLqVTwwE4.jpg",
    "medium":
        "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx86355-pGwmLqVTwwE4.jpg",
    "color": "#c9e4f1"
  },
  "bannerImage":
      "https://s4.anilist.co/file/anilistcdn/media/manga/banner/86355-f0kILfzr9zZA.jpg",
  "genres": ["Adventure", "Comedy", "Fantasy"],
  "synonyms": [
    "Regarding Reincarnating as Slime",
    "TenSura",
    "Moi, quand je me réincarne en Slime",
    "เกิดใหม่ทั้งทีก็เป็นสไลม์ไปซะแล้ว",
    "Odrodzony jako Galareta",
    "關於我轉生變成史萊姆這檔事"
  ],
  "averageScore": 84,
  "meanScore": 84,
  "popularity": 13911,
  "isLocked": false,
  "trending": 0,
  "favourites": 1173,
  "tags": [
    {
      "id": 244,
      "name": "Isekai",
      "isAdult": false,
      "rank": 96,
      "description":
          "Features characters being transported into an alternate world setting and having to adapt to their new surroundings.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 243,
      "name": "Reincarnation",
      "isAdult": false,
      "rank": 89,
      "description":
          "Features a character being born again after death, typically as another person or in another world.",
      "category": "Theme-Other",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": false
    },
    {
      "id": 29,
      "name": "Magic",
      "isAdult": false,
      "rank": 84,
      "description":
          "Prominently features magical elements or the use of magic.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 103,
      "name": "Politics",
      "isAdult": false,
      "rank": 84,
      "description":
          "Centers around politics, politicians, or government activities.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 15,
      "name": "Demons",
      "isAdult": false,
      "rank": 77,
      "description": "Prominently features malevolent otherworldly creatures.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 111,
      "name": "War",
      "isAdult": false,
      "rank": 76,
      "description": "Partly or completely set during wartime.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 259,
      "name": "Monster Girl",
      "isAdult": false,
      "rank": 73,
      "description":
          "Prominently features a female character who is part-monster.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 66,
      "name": "Super Power",
      "isAdult": false,
      "rank": 71,
      "description":
          "Prominently features characters with special abilities that allow them to do what would normally be physically or logically impossible.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 109,
      "name": "Primarily Adult Cast",
      "isAdult": false,
      "rank": 70,
      "description":
          "Main cast is mostly composed of characters above a high school age.",
      "category": "Cast-Main Cast",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 480,
      "name": "Goblin",
      "isAdult": false,
      "rank": 66,
      "description":
          "A goblin is a monstrous creature from European folklore. They are almost always small and grotesque, mischievous or outright malicious, and greedy. Sometimes with magical abilities.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 96,
      "name": "Time Manipulation",
      "isAdult": false,
      "rank": 64,
      "description":
          "Prominently features time-traveling or other time-warping phenomena.",
      "category": "Theme-Sci-Fi",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": true
    },
    {
      "id": 224,
      "name": "Dragons",
      "isAdult": false,
      "rank": 64,
      "description":
          "Prominently features mythical reptiles which generally have wings and can breathe fire.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 146,
      "name": "Alternate Universe",
      "isAdult": false,
      "rank": 60,
      "description":
          "Features multiple alternate universes in the same series.",
      "category": "Setting-Universe",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": false
    },
    {
      "id": 153,
      "name": "Time Skip",
      "isAdult": false,
      "rank": 56,
      "description": "Features a gap in time used to advance the story.",
      "category": "Setting-Time",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": false
    },
    {
      "id": 334,
      "name": "Agender",
      "isAdult": false,
      "rank": 46,
      "description": "Prominently features agender characters.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 99,
      "name": "Henshin",
      "isAdult": false,
      "rank": 40,
      "description":
          "Prominently features character or costume transformations which often grant special abilities.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 56,
      "name": "Shounen",
      "isAdult": false,
      "rank": 32,
      "description": "Target demographic is teenage and young adult males.",
      "category": "Demographic",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 76,
      "name": "Yuri",
      "isAdult": false,
      "rank": 10,
      "description":
          "Prominently features romance between two females, not inherently sexual. Also known as Girls\u0027 Love.",
      "category": "Theme-Romance",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    }
  ],
  "relations": {
    "edges": [
      {
        "id": 16449,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 86399,
          "title": {"userPreferred": "Tensei Shitara Slime Datta Ken"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/nx86399-NwbRFVh5koqc.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/nx86399-NwbRFVh5koqc.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/nx86399-NwbRFVh5koqc.jpg",
            "color": "#50bbf1"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2015, "month": 3, "day": 26},
          "updatedAt": 1720289700,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 25623,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 104822,
          "title": {
            "userPreferred": "Tensura Nikki: Tensei Shitara Slime Datta Ken"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx104822-TI00BWjLiEjK.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx104822-TI00BWjLiEjK.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx104822-TI00BWjLiEjK.jpg",
            "color": "#5dbbe4"
          },
          "genres": ["Adventure", "Comedy", "Fantasy", "Slice of Life"],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2018, "month": 5, "day": 9},
          "updatedAt": 1720270361,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 25625,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 103875,
          "title": {
            "userPreferred":
                "Tensei Shitara Slime Datta Ken: Mamono no Kuni no Arukikata"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx103875-AkDMp2BqvvVa.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx103875-AkDMp2BqvvVa.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx103875-AkDMp2BqvvVa.jpg",
            "color": "#f1d6bb"
          },
          "genres": ["Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "CANCELLED",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2016, "month": 7, "day": 28},
          "updatedAt": 1720271531,
          "endDate": {"year": 2021, "month": 3, "day": 1}
        }
      },
      {
        "id": 28634,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 101280,
          "title": {"userPreferred": "Tensei Shitara Slime Datta Ken"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx101280-ezBXqEHi8pg0.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx101280-ezBXqEHi8pg0.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx101280-ezBXqEHi8pg0.jpg",
            "color": "#5daef1"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2018, "month": 10, "day": 2},
          "updatedAt": 1720289672,
          "endDate": {"year": 2019, "month": 3, "day": 19}
        }
      },
      {
        "id": 31356,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 108511,
          "title": {
            "userPreferred": "Tensei Shitara Slime Datta Ken 2nd Season"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx108511-PufFordLNyIb.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx108511-PufFordLNyIb.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx108511-PufFordLNyIb.jpg",
            "color": "#f16b50"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2021, "month": 1, "day": 12},
          "updatedAt": 1720289657,
          "endDate": {"year": 2021, "month": 3, "day": 30}
        }
      },
      {
        "id": 33149,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 110029,
          "title": {
            "userPreferred": "Tenchura! Tensei Shitara Slime Datta Ken"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx110029-44tyc6sdCtdf.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx110029-44tyc6sdCtdf.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx110029-44tyc6sdCtdf.jpg",
            "color": "#f1860d"
          },
          "genres": ["Comedy", "Fantasy", "Slice of Life"],
          "type": "MANGA",
          "status": "FINISHED",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2019, "month": 2, "day": 26},
          "updatedAt": 1720271812,
          "endDate": {"year": 2023, "month": 5, "day": 25}
        }
      },
      {
        "id": 33375,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 110271,
          "title": {
            "userPreferred":
                "Tensei Shitara Slime datta Ken Ibun: Makuni Kurashi no Trinity"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx110271-eACIQnUoIUAu.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx110271-eACIQnUoIUAu.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx110271-eACIQnUoIUAu.jpg",
            "color": "#5dc9e4"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2019, "month": 6, "day": 26},
          "updatedAt": 1720266440,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 37919,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 114566,
          "title": {"userPreferred": "Tensei shitemo Shachiku Datta Ken"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx114566-HHWaJBlxS5LL.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx114566-HHWaJBlxS5LL.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx114566-HHWaJBlxS5LL.jpg",
            "color": "#5dbbe4"
          },
          "genres": ["Comedy", "Fantasy", "Slice of Life"],
          "type": "MANGA",
          "status": "FINISHED",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2018, "month": 9, "day": 26},
          "updatedAt": 1720268228,
          "endDate": {"year": 2020, "month": 1, "day": 22}
        }
      },
      {
        "id": 40174,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 116742,
          "title": {
            "userPreferred": "Tensei Shitara Slime Datta Ken 2nd Season Part 2"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx116742-jn0dW23ftehq.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx116742-jn0dW23ftehq.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx116742-jn0dW23ftehq.jpg",
            "color": "#e4a15d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2021, "month": 7, "day": 6},
          "updatedAt": 1720289670,
          "endDate": {"year": 2021, "month": 9, "day": 21}
        }
      },
      {
        "id": 73903,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 150291,
          "title": {
            "userPreferred": "Tensei Shitara Slime Datta Ken: Clayman REVENGE"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx150291-IlSiBDbXnhIL.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx150291-IlSiBDbXnhIL.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx150291-IlSiBDbXnhIL.jpg",
            "color": "#e4505d"
          },
          "genres": [
            "Comedy",
            "Fantasy",
            "Mystery",
            "Slice of Life",
            "Supernatural"
          ],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "ORIGINAL",
          "startDate": {"year": 2022, "month": 4, "day": 26},
          "updatedAt": 1720278831,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 80670,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 156822,
          "title": {
            "userPreferred": "Tensei Shitara Slime Datta Ken 3rd Season"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx156822-Jzo2ITWgm4kM.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx156822-Jzo2ITWgm4kM.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx156822-Jzo2ITWgm4kM.jpg",
            "color": "#e4785d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "RELEASING",
          "source": "LIGHT_NOVEL",
          "startDate": {"year": 2024, "month": 4, "day": 5},
          "updatedAt": 1720289490,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 84317,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 161858,
          "title": {
            "userPreferred":
                "Tensei Shitara Slime Datta Ken: Bangai-hen - Toaru Kyuuka no Sugoshikata"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx161858-SHZXvdRejpIS.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx161858-SHZXvdRejpIS.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx161858-SHZXvdRejpIS.jpg",
            "color": "#e4ae0d"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "OTHER",
          "startDate": {"year": 2023, "month": 7, "day": 26},
          "updatedAt": 1720286212,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 86201,
        "relationType": "SPIN_OFF",
        "isMainStudio": false,
        "node": {
          "id": 164248,
          "title": {
            "userPreferred":
                "Tensei Shitara Slime Datta Ken Bishokuden: Peko to Rimuru no Ryouri Techou"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx164248-yhb3oeFjRA9c.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx164248-yhb3oeFjRA9c.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx164248-yhb3oeFjRA9c.jpg",
            "color": "#5daee4"
          },
          "genres": ["Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "ORIGINAL",
          "startDate": {"year": 2023, "month": 4, "day": 26},
          "updatedAt": 1720257201,
          "endDate": {"year": null, "month": null, "day": null}
        }
      }
    ]
  },
  "characters": {
    "edges": [
      {
        "role": "MAIN",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 123962,
          "name": {
            "first": "Rimuru",
            "middle": null,
            "last": "Tempest",
            "full": "Rimuru Tempest",
            "native": "リムル・テンペスト",
            "userPreferred": "Rimuru Tempest"
          },
          "gender": "Male (past life) → Agender",
          "age": "37 (past life) → 3",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b123962-eL9yGV0NLMF7.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b123962-eL9yGV0NLMF7.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 128038,
          "name": {
            "first": "Benimaru",
            "middle": null,
            "last": null,
            "full": "Benimaru",
            "native": "ベニマル（紅丸）",
            "userPreferred": "Benimaru"
          },
          "gender": "Male",
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b128038-VgVcqf6NDGJ5.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b128038-VgVcqf6NDGJ5.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 129348,
          "name": {
            "first": "Rigurd",
            "middle": null,
            "last": "",
            "full": "Rigurd",
            "native": "リグルド",
            "userPreferred": "Rigurd"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b129348-uWQXM503laJT.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b129348-uWQXM503laJT.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 128033,
          "name": {
            "first": "Shion",
            "middle": null,
            "last": null,
            "full": "Shion",
            "native": "シオン（紫苑）",
            "userPreferred": "Shion"
          },
          "gender": "Female",
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b128033-fLbTgW4M2yj3.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b128033-fLbTgW4M2yj3.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 129915,
          "name": {
            "first": "Kaijin",
            "middle": null,
            "last": null,
            "full": "Kaijin",
            "native": "カイジン",
            "userPreferred": "Kaijin"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b129915-09RUrdTUgymf.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b129915-09RUrdTUgymf.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 128039,
          "name": {
            "first": "Souei",
            "middle": null,
            "last": null,
            "full": "Souei",
            "native": "ソウエイ（蒼影）",
            "userPreferred": "Souei"
          },
          "gender": "Male",
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b128039-cce4njbCcb2M.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b128039-cce4njbCcb2M.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 128037,
          "name": {
            "first": "Shizue",
            "middle": null,
            "last": "Izawa",
            "full": "Shizue Izawa",
            "native": "井沢静江",
            "userPreferred": "Shizue Izawa"
          },
          "gender": "Female",
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b128037-kJ3HzX4s4iDl.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b128037-kJ3HzX4s4iDl.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 129919,
          "name": {
            "first": "Ellen",
            "middle": null,
            "last": null,
            "full": "Ellen",
            "native": "エレン",
            "userPreferred": "Ellen"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b129919-EpaC3tWzCDpF.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b129919-EpaC3tWzCDpF.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 129349,
          "name": {
            "first": "Rigur",
            "middle": null,
            "last": null,
            "full": "Rigur",
            "native": "リグル",
            "userPreferred": "Rigur"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b129349-lneC6Glj2bps.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b129349-lneC6Glj2bps.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [],
        "voiceActorRoles": [],
        "favouriteOrder": null,
        "node": {
          "id": 129918,
          "name": {
            "first": "Kaval",
            "middle": null,
            "last": null,
            "full": "Kaval",
            "native": "カバル",
            "userPreferred": "Kaval"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b129918-Srq5hldfOKBm.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b129918-Srq5hldfOKBm.jpg"
          }
        }
      }
    ]
  },
  "studios": {"nodes": []},
  "isFavourite": false,
  "isAdult": false,
  "nextAiringEpisode": null,
  "airingSchedule": {"nodes": []},
  "externalLinks": [
    {
      "id": 70921,
      "url":
          "https://yenpress.com/titles/9780316414203-that-time-i-got-reincarnated-as-a-slime-vol-1-light-novel",
      "site": "Yen Press",
      "siteId": 183,
      "type": "INFO",
      "color": "#90A548",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/183-l4ZkVEmBY5Af.png",
      "notes": null,
      "language": null
    },
    {
      "id": 70922,
      "url": "https://www.kadokawa.com.tw/collections/tenseisureimu_",
      "site": "Official Site",
      "siteId": 2,
      "type": "INFO",
      "color": null,
      "icon": null,
      "notes": null,
      "language": "Chinese"
    },
    {
      "id": 70923,
      "url": "https://gcnovels.jp/slime/",
      "site": "Official Site",
      "siteId": 2,
      "type": "INFO",
      "color": null,
      "icon": null,
      "notes": null,
      "language": "Japanese"
    }
  ],
  "siteUrl": "https://anilist.co/manga/86355",
  "rankings": [
    {
      "id": 30262,
      "rank": 26,
      "type": "RATED",
      "format": "NOVEL",
      "year": null,
      "season": null,
      "allTime": true
    },
    {
      "id": 30299,
      "rank": 13,
      "type": "POPULAR",
      "format": "NOVEL",
      "year": null,
      "season": null,
      "allTime": true
    },
    {
      "id": 31173,
      "rank": 4,
      "type": "RATED",
      "format": "NOVEL",
      "year": 2014,
      "season": null,
      "allTime": false
    },
    {
      "id": 31202,
      "rank": 3,
      "type": "POPULAR",
      "format": "NOVEL",
      "year": 2014,
      "season": null,
      "allTime": false
    }
  ],
  "staff": {
    "edges": [
      {
        "node": {
          "name": {
            "first": "Fuse",
            "middle": null,
            "last": null,
            "full": "Fuse",
            "native": "伏瀬",
            "userPreferred": "Fuse"
          },
          "id": 119452,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n119452-4todv2rw3paW.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n119452-4todv2rw3paW.png"
          },
          "description": "[Syosetu](https://mypage.syosetu.com/311735/)"
        },
        "role": "Story"
      },
      {
        "node": {
          "name": {
            "first": "Mitz",
            "middle": null,
            "last": "Vah",
            "full": "Mitz Vah",
            "native": "みっつばー",
            "userPreferred": "Mitz Vah"
          },
          "id": 125101,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n125101-UG7Ql6gqIaAl.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n125101-UG7Ql6gqIaAl.png"
          },
          "description":
              "[Twitter](https://twitter.com/mitz_vah) | [Pixiv](https://www.pixiv.net/member.php?id\u003d40439)"
        },
        "role": "Illustration"
      },
      {
        "node": {
          "name": {
            "first": "Chloé",
            "middle": null,
            "last": "Bardan",
            "full": "Chloé Bardan",
            "native": null,
            "userPreferred": "Chloé Bardan"
          },
          "id": 224444,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/default.jpg"
          },
          "description": "Chloé Bardan is a Japanese to French translator. "
        },
        "role": "Translation (French)"
      },
      {
        "node": {
          "name": {
            "first": "Kevin",
            "middle": null,
            "last": "Gifford",
            "full": "Kevin Gifford",
            "native": null,
            "userPreferred": "Kevin Gifford"
          },
          "id": 218383,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n218383-OyAfENk3D0wO.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n218383-OyAfENk3D0wO.jpg"
          },
          "description": "[Twitter](https://twitter.com/kevingifford)"
        },
        "role": "Translator (English)"
      }
    ]
  }
});

final searchAnimeDummy = SearchAnimeResponse.fromJson({
  "pageInfo": {"hasNextPage": false},
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
