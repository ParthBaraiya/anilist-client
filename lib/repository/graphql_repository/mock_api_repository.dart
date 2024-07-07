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
  "id": 21,
  "idMal": 21,
  "title": {
    "romaji": "ONE PIECE",
    "english": "ONE PIECE",
    "native": "ONE PIECE",
    "userPreferred": "ONE PIECE"
  },
  "type": "ANIME",
  "format": "TV",
  "status": "RELEASING",
  "description":
      "Gold Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the location of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece (which promises an unlimited amount of riches and fame), and quite possibly the most coveted of titles for the person who found it, the title of the Pirate King.\u003cbr\u003e\u003cbr\u003e\nEnter Monkey D. Luffy, a 17-year-old boy that defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate who ransacks villages for fun, Luffy’s reason for being a pirate is one of pure wonder; the thought of an exciting adventure and meeting new and intriguing people, along with finding One Piece, are his reasons of becoming a pirate. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach One Piece.\u003cbr\u003e\u003cbr\u003e\n\u003cb\u003e*This includes following special episodes:\u003c/b\u003e\u003cbr\u003e\n- Chopperman to the Rescue! Protect the TV Station by the Shore! (Episode 336)\u003cbr\u003e\n- The Strongest Tag-Team! Luffy and Toriko\u0027s Hard Struggle! (Episode 492)\u003cbr\u003e\n- Team Formation! Save Chopper (Episode 542)\u003cbr\u003e\n- History\u0027s Strongest Collaboration vs. Glutton of the Sea (Episode 590)\u003cbr\u003e\n- 20th Anniversary! Special Romance Dawn (Episode 907)",
  "startDate": {"year": 1999, "month": 10, "day": 20},
  "endDate": {"year": null, "month": null, "day": null},
  "season": "FALL",
  "seasonYear": 1999,
  "seasonInt": 994,
  "episodes": null,
  "duration": 24,
  "chapters": null,
  "volumes": null,
  "countryOfOrigin": "JP",
  "isLicensed": true,
  "source": "MANGA",
  "hashtag": "#ONEPIECE",
  "trailer": null,
  "updatedAt": 1720372550,
  "coverImage": {
    "extraLarge":
        "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx21-YCDoj1EkAxFn.jpg",
    "large":
        "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx21-YCDoj1EkAxFn.jpg",
    "medium":
        "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx21-YCDoj1EkAxFn.jpg",
    "color": "#e49335"
  },
  "bannerImage":
      "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21-wf37VakJmZqs.jpg",
  "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
  "synonyms": [
    "ワンピース",
    "海贼王",
    "וואן פיס",
    "ون بيس",
    "วันพีซ",
    "Vua Hải Tặc",
    "All\u0027arrembaggio!",
    "Tutti all\u0027arrembaggio!",
    "Ντρέηκ, το Κυνήγι του Θησαυρού"
  ],
  "averageScore": 88,
  "meanScore": 88,
  "popularity": 530725,
  "isLocked": false,
  "trending": 368,
  "favourites": 77290,
  "tags": [
    {
      "id": 201,
      "name": "Pirates",
      "isAdult": false,
      "rank": 98,
      "description":
          "Prominently features sea-faring adventurers branded as criminals by the law.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 105,
      "name": "Ensemble Cast",
      "isAdult": false,
      "rank": 93,
      "description":
          "Features a large cast of characters with (almost) equal screen time and importance to the plot.",
      "category": "Cast-Main Cast",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 56,
      "name": "Shounen",
      "isAdult": false,
      "rank": 93,
      "description": "Target demographic is teenage and young adult males.",
      "category": "Demographic",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1310,
      "name": "Travel",
      "isAdult": false,
      "rank": 93,
      "description":
          "Centers around character(s) moving between places a significant distance apart.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 66,
      "name": "Super Power",
      "isAdult": false,
      "rank": 89,
      "description":
          "Prominently features characters with special abilities that allow them to do what would normally be physically or logically impossible.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1277,
      "name": "Found Family",
      "isAdult": false,
      "rank": 85,
      "description":
          "Features a group of characters with no biological relations that are united in a group providing social support.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 82,
      "name": "Male Protagonist",
      "isAdult": false,
      "rank": 83,
      "description": "Main character is male.",
      "category": "Cast-Main Cast",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 83,
      "name": "Slapstick",
      "isAdult": false,
      "rank": 83,
      "description":
          "Prominently features comedy based on deliberately clumsy actions or embarrassing events.",
      "category": "Theme-Comedy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 85,
      "name": "Tragedy",
      "isAdult": false,
      "rank": 82,
      "description": "Centers around tragic events and unhappy endings.",
      "category": "Theme-Drama",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": true
    },
    {
      "id": 305,
      "name": "Ships",
      "isAdult": false,
      "rank": 81,
      "description":
          "Prominently features the use of sea-based transportation vessels.",
      "category": "Theme-Other-Vehicle",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 456,
      "name": "Conspiracy",
      "isAdult": false,
      "rank": 81,
      "description":
          "Contains one or more factions controlling or attempting to control the world from the shadows.",
      "category": "Theme-Drama",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 153,
      "name": "Time Skip",
      "isAdult": false,
      "rank": 79,
      "description": "Features a gap in time used to advance the story.",
      "category": "Setting-Time",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": true
    },
    {
      "id": 247,
      "name": "Slavery",
      "isAdult": false,
      "rank": 78,
      "description": "Prominently features slaves, slavery, or slave trade.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 103,
      "name": "Politics",
      "isAdult": false,
      "rank": 77,
      "description":
          "Centers around politics, politicians, or government activities.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 648,
      "name": "Crime",
      "isAdult": false,
      "rank": 76,
      "description":
          "Centers around unlawful activities punishable by the state or other authority.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 226,
      "name": "Fugitive",
      "isAdult": false,
      "rank": 76,
      "description":
          "Prominently features a character evading capture by an individual or organization.",
      "category": "Theme-Action",
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
      "isMediaSpoiler": false
    },
    {
      "id": 217,
      "name": "Dystopian",
      "isAdult": false,
      "rank": 75,
      "description":
          "Partly or completely set in a society characterized by poverty, squalor or oppression.",
      "category": "Setting-Time",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 253,
      "name": "Gods",
      "isAdult": false,
      "rank": 75,
      "description":
          "Prominently features a character of divine or religious nature.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 391,
      "name": "Philosophy",
      "isAdult": false,
      "rank": 73,
      "description":
          "Relating or devoted to the study of the fundamental nature of knowledge, reality, and existence.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 1427,
      "name": "Prison",
      "isAdult": false,
      "rank": 72,
      "description": "Partly or completely set in a prison.",
      "category": "Setting-Scene",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 466,
      "name": "Lost Civilization",
      "isAdult": false,
      "rank": 71,
      "description":
          "Featuring a civilization with few ruins or records that exist in present day knowledge.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 43,
      "name": "Swordplay",
      "isAdult": false,
      "rank": 71,
      "description": "Prominently features the use of swords in combat.",
      "category": "Theme-Action",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1304,
      "name": "Anthropomorphism",
      "isAdult": false,
      "rank": 70,
      "description":
          "Contains non-human character(s) that have attributes or characteristics of a human being.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1090,
      "name": "Monster Boy",
      "isAdult": false,
      "rank": 70,
      "description":
          "Prominently features a male character who is a part-monster.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 291,
      "name": "Samurai",
      "isAdult": false,
      "rank": 70,
      "description":
          "Prominently features warriors of medieval Japanese nobility bound by a code of honor.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 659,
      "name": "Medicine",
      "isAdult": false,
      "rank": 70,
      "description":
          "Centered around the activities of people working in the field of medicine.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 142,
      "name": "Food",
      "isAdult": false,
      "rank": 70,
      "description": "Centers around cooking or food appraisal.",
      "category": "Theme-Arts",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 99,
      "name": "Henshin",
      "isAdult": false,
      "rank": 68,
      "description":
          "Prominently features character or costume transformations which often grant special abilities.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 517,
      "name": "Artificial Intelligence",
      "isAdult": false,
      "rank": 68,
      "description":
          "Intelligent non-organic machines that work and react similarly to humans.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 175,
      "name": "Robots",
      "isAdult": false,
      "rank": 66,
      "description": "Prominently features humanoid machines.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 772,
      "name": "Shapeshifting",
      "isAdult": false,
      "rank": 66,
      "description":
          "Features character(s) who changes one\u0027s appearance or form.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 801,
      "name": "Cyborg",
      "isAdult": false,
      "rank": 66,
      "description":
          "Prominently features a human character whose physiological functions are aided or enhanced by artificial means.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1453,
      "name": "Desert",
      "isAdult": false,
      "rank": 65,
      "description": "Prominently features a desert environment.",
      "category": "Setting-Scene",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 109,
      "name": "Primarily Adult Cast",
      "isAdult": false,
      "rank": 65,
      "description":
          "Main cast is mostly composed of characters above a high school age.",
      "category": "Cast-Main Cast",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 433,
      "name": "Animals",
      "isAdult": false,
      "rank": 64,
      "description":
          "Prominently features animal characters in a leading role.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 102,
      "name": "Coming of Age",
      "isAdult": false,
      "rank": 64,
      "description":
          "Centers around a character\u0027s transition from childhood to adulthood.",
      "category": "Theme-Drama",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 157,
      "name": "Guns",
      "isAdult": false,
      "rank": 64,
      "description": "Prominently features the use of guns in combat.",
      "category": "Theme-Action",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1433,
      "name": "Marriage",
      "isAdult": false,
      "rank": 64,
      "description": "Centers around marriage between two or more characters.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 499,
      "name": "Skeleton",
      "isAdult": false,
      "rank": 63,
      "description": "Prominently features skeleton(s) as a character.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 104,
      "name": "Anti-Hero",
      "isAdult": false,
      "rank": 63,
      "description":
          "Features a protagonist who lacks conventional heroic attributes and may be considered a borderline villain.",
      "category": "Cast-Main Cast",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 224,
      "name": "Dragons",
      "isAdult": false,
      "rank": 63,
      "description":
          "Prominently features mythical reptiles which generally have wings and can breathe fire.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 122,
      "name": "Trains",
      "isAdult": false,
      "rank": 62,
      "description": "Prominently features trains.",
      "category": "Theme-Other-Vehicle",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 490,
      "name": "Anachronism",
      "isAdult": false,
      "rank": 61,
      "description":
          "Prominently features elements that are out of place in the historical period the work takes place in, particularly modern elements in a historical setting.",
      "category": "Setting-Time",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 93,
      "name": "Post-Apocalyptic",
      "isAdult": false,
      "rank": 61,
      "description":
          "Partly or completely set in a world or civilization after a global disaster.",
      "category": "Setting-Universe",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 98,
      "name": "Female Protagonist",
      "isAdult": false,
      "rank": 60,
      "description": "Main character is female.",
      "category": "Cast-Main Cast",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 310,
      "name": "Espionage",
      "isAdult": false,
      "rank": 60,
      "description":
          "Prominently features characters infiltrating an organization in order to steal sensitive information.",
      "category": "Theme-Action",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 1455,
      "name": "Fairy",
      "isAdult": false,
      "rank": 60,
      "description": "Prominently features a character who is a fairy.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 259,
      "name": "Monster Girl",
      "isAdult": false,
      "rank": 60,
      "description":
          "Prominently features a female character who is part-monster.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 489,
      "name": "Drugs",
      "isAdult": false,
      "rank": 58,
      "description":
          "Prominently features the usage of drugs such as opioids, stimulants, hallucinogens etc.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 622,
      "name": "Asexual",
      "isAdult": false,
      "rank": 56,
      "description":
          "Features a character who isn\u0027t sexually attracted to people of any sex or gender.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1342,
      "name": "Clone",
      "isAdult": false,
      "rank": 56,
      "description":
          "Prominently features a character who is an artificial exact copy of another organism.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 322,
      "name": "Assassins",
      "isAdult": false,
      "rank": 56,
      "description":
          "Centers around characters who murder people as a profession.",
      "category": "Theme-Other-Organisations",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 779,
      "name": "Kuudere",
      "isAdult": false,
      "rank": 55,
      "description":
          "Prominently features a character who generally retains a cold, blunt and cynical exterior, but once one gets to know them, they have a very warm and loving interior.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1052,
      "name": "Adoption",
      "isAdult": false,
      "rank": 54,
      "description":
          "Features a character who has been adopted by someone who is neither of their biological parents.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 255,
      "name": "Ninja",
      "isAdult": false,
      "rank": 53,
      "description":
          "Prominently features Japanese warriors traditionally trained in espionage, sabotage and assasination.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 77,
      "name": "Gender Bending",
      "isAdult": false,
      "rank": 53,
      "description":
          "Prominently features a character who dresses and behaves in a way characteristic of another gender, or has been transformed into a person of another gender.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1539,
      "name": "Unrequited Love",
      "isAdult": false,
      "rank": 53,
      "description":
          "One or more characters are experiencing an unrequited love that may or may not be reciprocated.",
      "category": "Theme-Romance",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 252,
      "name": "Revenge",
      "isAdult": false,
      "rank": 53,
      "description":
          "Prominently features a character who aims to exact punishment in a resentful or vindictive manner.",
      "category": "Theme-Drama",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": true
    },
    {
      "id": 101,
      "name": "Battle Royale",
      "isAdult": false,
      "rank": 52,
      "description":
          "Centers around a fierce group competition, often violent and with only one winner.",
      "category": "Theme-Action",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 1068,
      "name": "Angels",
      "isAdult": false,
      "rank": 52,
      "description":
          "Prominently features spiritual beings usually represented with wings and halos and believed to be attendants of God.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 96,
      "name": "Time Manipulation",
      "isAdult": false,
      "rank": 51,
      "description":
          "Prominently features time-traveling or other time-warping phenomena.",
      "category": "Theme-Sci-Fi",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": true
    },
    {
      "id": 558,
      "name": "Mermaid",
      "isAdult": false,
      "rank": 51,
      "description":
          "A mythological creature with the body of a human and the tail of a fish.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 90,
      "name": "CGI",
      "isAdult": false,
      "rank": 50,
      "description":
          "Prominently features scenes created with computer-generated imagery.",
      "category": "Technical",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 265,
      "name": "Musical Theater",
      "isAdult": false,
      "rank": 48,
      "description":
          "Features a performance that combines songs, spoken dialogue, acting, and dance.",
      "category": "Theme-Arts-Music",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 23,
      "name": "Female Harem",
      "isAdult": false,
      "rank": 44,
      "description":
          "Main cast features the protagonist plus several female characters who are romantically interested in them.",
      "category": "Theme-Romance",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 152,
      "name": "Zombie",
      "isAdult": false,
      "rank": 42,
      "description":
          "Prominently features reanimated corpses which often prey on live humans and turn them into zombies.",
      "category": "Cast-Traits",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 154,
      "name": "Body Swapping",
      "isAdult": false,
      "rank": 42,
      "description":
          "Centers around individuals swapping bodies with one another.",
      "category": "Theme-Fantasy",
      "isGeneralSpoiler": true,
      "isMediaSpoiler": false
    },
    {
      "id": 483,
      "name": "LGBTQ+ Themes",
      "isAdult": false,
      "rank": 40,
      "description":
          "Prominently features characters or themes associated with the LGBTQ+ community, such as sexuality or gender identity.",
      "category": "Theme-Other",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 710,
      "name": "Achromatic",
      "isAdult": false,
      "rank": 15,
      "description":
          "Contains animation that is primarily done in black and white.",
      "category": "Technical",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    },
    {
      "id": 548,
      "name": "Acting",
      "isAdult": false,
      "rank": 13,
      "description": "Centers around actors or the acting industry.",
      "category": "Theme-Arts",
      "isGeneralSpoiler": false,
      "isMediaSpoiler": false
    }
  ],
  "relations": {
    "edges": [
      {
        "id": 42,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 466,
          "title": {"userPreferred": "ONE PIECE: Taose! Kaizoku Ganzack"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx466-bVP54I7dCB2F.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx466-bVP54I7dCB2F.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx466-bVP54I7dCB2F.jpg",
            "color": "#e49328"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 1998, "month": 7, "day": 26},
          "updatedAt": 1720329546,
          "endDate": {"year": 1998, "month": 7, "day": 26}
        }
      },
      {
        "id": 43,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 1094,
          "title": {
            "userPreferred":
                "ONE PIECE TV Special: Umi no Heso no Daibouken-hen"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx1094-H3YFJ1TR0ZZi.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1094-H3YFJ1TR0ZZi.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx1094-H3YFJ1TR0ZZi.jpg",
            "color": "#f1a10d"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2000, "month": 12, "day": 20},
          "updatedAt": 1720327955,
          "endDate": {"year": 2000, "month": 12, "day": 20}
        }
      },
      {
        "id": 44,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 1237,
          "title": {
            "userPreferred":
                "ONE PIECE: Oounabara ni Hirake! Dekkai Dekkai Chichi no Yume!"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/1237.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/1237.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/1237.jpg",
            "color": "#e4ae35"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2003, "month": 4, "day": 6},
          "updatedAt": 1720327836,
          "endDate": {"year": 2003, "month": 4, "day": 6}
        }
      },
      {
        "id": 45,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 1238,
          "title": {
            "userPreferred": "ONE PIECE TV Special 3: Mamore! Saigo no Oobutai"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx1238-Rf2wqBrCwgvO.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1238-Rf2wqBrCwgvO.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx1238-Rf2wqBrCwgvO.jpg",
            "color": "#5dc9f1"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2003, "month": 12, "day": 14},
          "updatedAt": 1720327835,
          "endDate": {"year": 2003, "month": 12, "day": 14}
        }
      },
      {
        "id": 46,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 2020,
          "title": {
            "userPreferred":
                "ONE PIECE: Nenmatsu Tokubetsu Kikaku! Mugiwara no Luffy Oyabun Torimonochou"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/2020.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/2020.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/2020.jpg",
            "color": "#f1bb35"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2005, "month": 12, "day": 18},
          "updatedAt": 1720326301,
          "endDate": {"year": 2005, "month": 12, "day": 18}
        }
      },
      {
        "id": 48,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 2386,
          "title": {"userPreferred": "ONE PIECE: Yume no Soccer Ou!"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/2386-NQQkq1taHJ08.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/2386-NQQkq1taHJ08.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/2386-NQQkq1taHJ08.jpg",
            "color": "#d6931a"
          },
          "genres": ["Comedy", "Fantasy", "Sports"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2002, "month": 3, "day": 2},
          "updatedAt": 1720326054,
          "endDate": {"year": 2002, "month": 3, "day": 2}
        }
      },
      {
        "id": 49,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 2490,
          "title": {"userPreferred": "ONE PIECE: Mezase! Kaizoku Yakyuu Ou"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/2490-AL4WmnCJ5zvE.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/2490-AL4WmnCJ5zvE.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/2490-AL4WmnCJ5zvE.jpg",
            "color": "#ffbb43"
          },
          "genres": ["Comedy", "Fantasy", "Sports"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2004, "month": 3, "day": 6},
          "updatedAt": 1720362019,
          "endDate": {"year": 2004, "month": 3, "day": 6}
        }
      },
      {
        "id": 54,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 12001,
          "title": {"userPreferred": "ONE PIECE 3D: Gekisou! Trap Coaster"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx12001-XX0NNNfaKZ3e.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx12001-XX0NNNfaKZ3e.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx12001-XX0NNNfaKZ3e.jpg",
            "color": "#f1e435"
          },
          "genres": ["Action", "Adventure", "Comedy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2011, "month": 12, "day": 1},
          "updatedAt": 1720322206,
          "endDate": {"year": 2011, "month": 12, "day": 1}
        }
      },
      {
        "id": 56,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 16239,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of Luffy - Hand Island no Bouken"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b16239-XzoVjd7JK8xJ.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b16239-XzoVjd7JK8xJ.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b16239-XzoVjd7JK8xJ.png",
            "color": "#f1c900"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2012, "month": 12, "day": 15},
          "updatedAt": 1720314286,
          "endDate": {"year": 2012, "month": 12, "day": 15}
        }
      },
      {
        "id": 58,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 16468,
          "title": {"userPreferred": "ONE PIECE FILM: Z - GLORIOUS ISLAND"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b16468-pMKFwfY8lYZX.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b16468-pMKFwfY8lYZX.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b16468-pMKFwfY8lYZX.png",
            "color": "#feae28"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2012, "month": 12, "day": 23},
          "updatedAt": 1720372795,
          "endDate": {"year": 2012, "month": 12, "day": 30}
        }
      },
      {
        "id": 62,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 15323,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of Nami - Koukaishi no Namida to Nakama no Kizuna"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/15323.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/15323.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/15323.jpg",
            "color": "#fed628"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2012, "month": 8, "day": 25},
          "updatedAt": 1720322206,
          "endDate": {"year": 2012, "month": 8, "day": 25}
        }
      },
      {
        "id": 63,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 19123,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of Merry - Mou Hitori no Nakama no Monogatari"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx19123-leET1CrSJknT.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx19123-leET1CrSJknT.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx19123-leET1CrSJknT.jpg",
            "color": "#e4c95d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2013, "month": 8, "day": 24},
          "updatedAt": 1720322206,
          "endDate": {"year": 2013, "month": 8, "day": 24}
        }
      },
      {
        "id": 9584,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 20835,
          "title": {
            "userPreferred":
                "ONE PIECE \"3D2Y\": Ace no shi wo Koete! Luffy Nakama to no Chikai"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20835-QVV6LpJlqe1A.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20835-QVV6LpJlqe1A.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx20835-QVV6LpJlqe1A.jpg",
            "color": "#e47850"
          },
          "genres": ["Action", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2014, "month": 8, "day": 30},
          "updatedAt": 1720339893,
          "endDate": {"year": 2014, "month": 8, "day": 30}
        }
      },
      {
        "id": 10296,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 21230,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of Sabo - 3-Kyoudai no Kizuna Kiseki no Saikai to Uketsugareru Ishi"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx21230-rfoUZud1Jn0L.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx21230-rfoUZud1Jn0L.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx21230-rfoUZud1Jn0L.png",
            "color": "#f1a150"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2015, "month": 8, "day": 22},
          "updatedAt": 1720365193,
          "endDate": {"year": 2015, "month": 8, "day": 22}
        }
      },
      {
        "id": 10767,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 21485,
          "title": {"userPreferred": "ONE PIECE: Adventure of Nebulandia"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/21485-KR1sv4rYSe6V.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/21485-KR1sv4rYSe6V.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/21485-KR1sv4rYSe6V.jpg",
            "color": "#e4bb43"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2015, "month": 12, "day": 19},
          "updatedAt": 1720322206,
          "endDate": {"year": 2015, "month": 12, "day": 19}
        }
      },
      {
        "id": 11330,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 21831,
          "title": {"userPreferred": "ONE PIECE: Heart of Gold"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx21831-qj5IKYiPOupF.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx21831-qj5IKYiPOupF.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx21831-qj5IKYiPOupF.jpg",
            "color": "#f1a10d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2016, "month": 7, "day": 16},
          "updatedAt": 1720350773,
          "endDate": {"year": 2016, "month": 7, "day": 16}
        }
      },
      {
        "id": 20110,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 99302,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of East Blue - Luffy to 4-nin no Nakama no Daibouken"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx99302-b40WIhc5dylo.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx99302-b40WIhc5dylo.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx99302-b40WIhc5dylo.jpg",
            "color": "#bbe45d"
          },
          "genres": ["Action", "Adventure", "Drama"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2017, "month": 8, "day": 26},
          "updatedAt": 1720367804,
          "endDate": {"year": 2017, "month": 8, "day": 26}
        }
      },
      {
        "id": 24926,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 459,
          "title": {"userPreferred": "ONE PIECE (Movie)"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx459-Ivw65mUXackh.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx459-Ivw65mUXackh.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx459-Ivw65mUXackh.png",
            "color": "#e40d0d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2000, "month": 3, "day": 4},
          "updatedAt": 1720329587,
          "endDate": {"year": 2000, "month": 3, "day": 4}
        }
      },
      {
        "id": 24927,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 460,
          "title": {"userPreferred": "ONE PIECE: Nejimaki-jima no Bouken"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx460-p9HObfGUhWn0.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx460-p9HObfGUhWn0.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx460-p9HObfGUhWn0.jpg",
            "color": "#e4c943"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2001, "month": 3, "day": 3},
          "updatedAt": 1720329580,
          "endDate": {"year": 2001, "month": 3, "day": 3}
        }
      },
      {
        "id": 24928,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 461,
          "title": {
            "userPreferred": "ONE PIECE: Chinjuu-jima no Chopper Oukoku"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx461-DC9fMDl3AaK1.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx461-DC9fMDl3AaK1.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx461-DC9fMDl3AaK1.jpg",
            "color": "#e49343"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2002, "month": 3, "day": 2},
          "updatedAt": 1720329576,
          "endDate": {"year": 2002, "month": 3, "day": 2}
        }
      },
      {
        "id": 24929,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 462,
          "title": {"userPreferred": "ONE PIECE THE MOVIE: Dead End no Bouken"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx462-Ig8zfdsFWcql.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx462-Ig8zfdsFWcql.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx462-Ig8zfdsFWcql.png",
            "color": "#e49343"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2003, "month": 3, "day": 1},
          "updatedAt": 1720329572,
          "endDate": {"year": 2003, "month": 3, "day": 1}
        }
      },
      {
        "id": 24930,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 463,
          "title": {"userPreferred": "ONE PIECE: Norowareta Seiken"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx463-QDnETPoHp9oD.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx463-QDnETPoHp9oD.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx463-QDnETPoHp9oD.jpg",
            "color": "#e45078"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2004, "month": 3, "day": 6},
          "updatedAt": 1720372532,
          "endDate": {"year": 2004, "month": 3, "day": 6}
        }
      },
      {
        "id": 24931,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 464,
          "title": {
            "userPreferred":
                "ONE PIECE THE MOVIE: Omatsuri Danshaku to Himitsu no Shima"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx464-g4wcZPjbhY5j.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx464-g4wcZPjbhY5j.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx464-g4wcZPjbhY5j.png",
            "color": "#e4a15d"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2005, "month": 3, "day": 5},
          "updatedAt": 1720362019,
          "endDate": {"year": 2005, "month": 3, "day": 5}
        }
      },
      {
        "id": 24932,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 465,
          "title": {
            "userPreferred": "ONE PIECE THE MOVIE: Karakuri-jou no Mecha Kyohei"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx465-qSRr0MKYhS0I.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx465-qSRr0MKYhS0I.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx465-qSRr0MKYhS0I.jpg",
            "color": "#43aeff"
          },
          "genres": ["Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2006, "month": 3, "day": 4},
          "updatedAt": 1720329549,
          "endDate": {"year": 2006, "month": 3, "day": 4}
        }
      },
      {
        "id": 24933,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 2107,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of Alabasta - Sabaku no Oujo to Kaizoku-tachi"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx2107-H8bRuRRbhCIJ.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx2107-H8bRuRRbhCIJ.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx2107-H8bRuRRbhCIJ.jpg",
            "color": "#e4a143"
          },
          "genres": ["Action", "Adventure", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2007, "month": 3, "day": 3},
          "updatedAt": 1720372628,
          "endDate": {"year": 2007, "month": 3, "day": 3}
        }
      },
      {
        "id": 24934,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 3848,
          "title": {
            "userPreferred":
                "ONE PIECE THE MOVIE: Episode of Chopper Plus - Fuyu ni Saku, Kiseki no Sakura"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx3848-SCnYGTn34Llt.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx3848-SCnYGTn34Llt.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx3848-SCnYGTn34Llt.jpg",
            "color": "#e4e450"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2008, "month": 3, "day": 1},
          "updatedAt": 1720336285,
          "endDate": {"year": 2008, "month": 3, "day": 1}
        }
      },
      {
        "id": 24935,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 4155,
          "title": {"userPreferred": "ONE PIECE FILM: STRONG WORLD"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx4155-P5TDf6t6qFwX.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx4155-P5TDf6t6qFwX.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx4155-P5TDf6t6qFwX.png",
            "color": "#e4ae50"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2009, "month": 12, "day": 12},
          "updatedAt": 1720373029,
          "endDate": {"year": 2009, "month": 12, "day": 12}
        }
      },
      {
        "id": 24936,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 9999,
          "title": {"userPreferred": "ONE PIECE 3D: Mugiwara Chase"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/9999.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/9999.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/9999.jpg",
            "color": "#ffa100"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2011, "month": 3, "day": 19},
          "updatedAt": 1720333569,
          "endDate": {"year": 2011, "month": 3, "day": 19}
        }
      },
      {
        "id": 24937,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 12859,
          "title": {"userPreferred": "ONE PIECE FILM: Z"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx12859-uQFENDPzMWz6.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx12859-uQFENDPzMWz6.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx12859-uQFENDPzMWz6.jpg",
            "color": "#f1ae5d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2012, "month": 12, "day": 15},
          "updatedAt": 1720373029,
          "endDate": {"year": 2012, "month": 12, "day": 15}
        }
      },
      {
        "id": 24938,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 21335,
          "title": {"userPreferred": "ONE PIECE FILM: GOLD"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx21335-XsXdE0AeOkkZ.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx21335-XsXdE0AeOkkZ.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx21335-XsXdE0AeOkkZ.jpg",
            "color": "#f1bb35"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 2016, "month": 7, "day": 23},
          "updatedAt": 1720365177,
          "endDate": {"year": 2016, "month": 7, "day": 23}
        }
      },
      {
        "id": 25601,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 96427,
          "title": {"userPreferred": "ONE PIECE: Loguetown-hen"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx96427-XiDc44cTlf29.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx96427-XiDc44cTlf29.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx96427-XiDc44cTlf29.png",
            "color": "#e4861a"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "FINISHED",
          "source": null,
          "startDate": {"year": 2000, "month": 7, "day": 17},
          "updatedAt": 1720285822,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 25786,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 30013,
          "title": {"userPreferred": "ONE PIECE"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx30013-ulXvn0lzWvsz.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx30013-ulXvn0lzWvsz.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx30013-ulXvn0lzWvsz.jpg",
            "color": "#f1935d"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "MANGA",
          "status": "RELEASING",
          "source": "ORIGINAL",
          "startDate": {"year": 1997, "month": 7, "day": 22},
          "updatedAt": 1720372606,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 26532,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 101918,
          "title": {"userPreferred": "ONE PIECE: Episode of Sorajima"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx101918-3uyCYHw1syki.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx101918-3uyCYHw1syki.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx101918-3uyCYHw1syki.png",
            "color": "#5dc9f1"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2018, "month": 8, "day": 25},
          "updatedAt": 1720361250,
          "endDate": {"year": 2018, "month": 8, "day": 25}
        }
      },
      {
        "id": 26534,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 8740,
          "title": {
            "userPreferred": "ONE PIECE FILM: STRONG WORLD - EPISODE:0"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b8740-oZajT3brPn7b.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b8740-oZajT3brPn7b.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b8740-oZajT3brPn7b.jpg",
            "color": "#e493a1"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2010, "month": 4, "day": 16},
          "updatedAt": 1720336285,
          "endDate": {"year": 2010, "month": 4, "day": 16}
        }
      },
      {
        "id": 26580,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 105143,
          "title": {"userPreferred": "ONE PIECE STAMPEDE"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx105143-5uBDmhvMr6At.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx105143-5uBDmhvMr6At.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx105143-5uBDmhvMr6At.png",
            "color": "#e4e450"
          },
          "genres": ["Action", "Adventure", "Comedy", "Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2019, "month": 8, "day": 9},
          "updatedAt": 1720372943,
          "endDate": {"year": 2019, "month": 8, "day": 9}
        }
      },
      {
        "id": 26658,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 102639,
          "title": {
            "userPreferred":
                "Nissan SERENA x One Piece: Sennyuu Sauzando Sanii-gou"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx102639-AjxqMLkusd2Y.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx102639-AjxqMLkusd2Y.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx102639-AjxqMLkusd2Y.jpg",
            "color": "#d6ae78"
          },
          "genres": ["Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2011, "month": 3, "day": 5},
          "updatedAt": 1720360399,
          "endDate": {"year": 2011, "month": 3, "day": 5}
        }
      },
      {
        "id": 28133,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 106492,
          "title": {"userPreferred": "Kyutai Panic Adventure!"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b106492-ciLSI5nTJsV7.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b106492-ciLSI5nTJsV7.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b106492-ciLSI5nTJsV7.png",
            "color": "#e4c943"
          },
          "genres": ["Action"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": null,
          "startDate": {"year": 2003, "month": null, "day": null},
          "updatedAt": 1719921992,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 28278,
        "relationType": "SUMMARY",
        "isMainStudio": false,
        "node": {
          "id": 106572,
          "title": {
            "userPreferred":
                "ONE PIECE: Episode of Alabasta - Sabaku no Oujo to Kaizoku-tachi"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/n106572-k1gqIsDcqGaV.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/n106572-k1gqIsDcqGaV.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/n106572-k1gqIsDcqGaV.jpg",
            "color": "#e4bb43"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2011, "month": 8, "day": 20},
          "updatedAt": 1720356036,
          "endDate": {"year": 2011, "month": 8, "day": 20}
        }
      },
      {
        "id": 28803,
        "relationType": "OTHER",
        "isMainStudio": false,
        "node": {
          "id": 107110,
          "title": {"userPreferred": "ONE PIECE: Cry heart"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/n107110-pF0sMxDe3aLi.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/n107110-pF0sMxDe3aLi.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/n107110-pF0sMxDe3aLi.png",
            "color": "#f1861a"
          },
          "genres": ["Drama", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2014, "month": 1, "day": 19},
          "updatedAt": 1720268743,
          "endDate": {"year": 2015, "month": 4, "day": 22}
        }
      },
      {
        "id": 29072,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 107256,
          "title": {"userPreferred": "Kyutai Panic Adventure Returns!!!"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b107256-Pvgk6VnCmMZq.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b107256-Pvgk6VnCmMZq.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b107256-Pvgk6VnCmMZq.png",
            "color": "#f1c9ae"
          },
          "genres": ["Action"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": null,
          "startDate": {"year": 2004, "month": null, "day": null},
          "updatedAt": 1719748795,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 30235,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 2385,
          "title": {
            "userPreferred":
                "ONE PIECE: Nejimaki-jima no Bouken - Jango no Dance Carnival"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx2385-06iBj9aNIadt.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx2385-06iBj9aNIadt.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx2385-06iBj9aNIadt.jpg",
            "color": "#fef10d"
          },
          "genres": ["Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2001, "month": 3, "day": 3},
          "updatedAt": 1720326057,
          "endDate": {"year": 2001, "month": 3, "day": 3}
        }
      },
      {
        "id": 33258,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 101099,
          "title": {"userPreferred": "HUNGRY DAYS: Aoharu ka yo."},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b101099-3AoCbJWTj2cV.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b101099-3AoCbJWTj2cV.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b101099-3AoCbJWTj2cV.jpg",
            "color": "#a1a135"
          },
          "genres": ["Romance", "Slice of Life"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "OTHER",
          "startDate": {"year": 2017, "month": 6, "day": 7},
          "updatedAt": 1720363632,
          "endDate": {"year": 2020, "month": 2, "day": 7}
        }
      },
      {
        "id": 36085,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 21880,
          "title": {
            "userPreferred": "ONE PIECE FILM: GOLD - episode 0 711ver."
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx21880-uxsZ880LXSdY.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx21880-uxsZ880LXSdY.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx21880-uxsZ880LXSdY.jpg",
            "color": "#e4a135"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2016, "month": 7, "day": 2},
          "updatedAt": 1720347277,
          "endDate": {"year": 2016, "month": 7, "day": 2}
        }
      },
      {
        "id": 36119,
        "relationType": "ALTERNATIVE",
        "isMainStudio": false,
        "node": {
          "id": 5252,
          "title": {"userPreferred": "ONE PIECE: ROMANCE DAWN STORY"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/5252.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/5252.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/5252.jpg",
            "color": "#43a1e4"
          },
          "genres": ["Action", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2008, "month": 11, "day": 24},
          "updatedAt": 1720373010,
          "endDate": {"year": 2008, "month": 11, "day": 24}
        }
      },
      {
        "id": 36524,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 30793,
          "title": {"userPreferred": "Wanted!"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx30793-Zca4SIWG5j8e.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx30793-Zca4SIWG5j8e.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx30793-Zca4SIWG5j8e.png",
            "color": "#f1ae5d"
          },
          "genres": ["Action", "Comedy"],
          "type": "MANGA",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 1998, "month": 11, "day": 4},
          "updatedAt": 1720307737,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 36567,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 113308,
          "title": {"userPreferred": "Kinen Satsuei"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx113308-u6wWW3d01DSt.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx113308-u6wWW3d01DSt.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx113308-u6wWW3d01DSt.jpg",
            "color": "#f1865d"
          },
          "genres": ["Drama"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2019, "month": 11, "day": 2},
          "updatedAt": 1720350719,
          "endDate": {"year": 2019, "month": 11, "day": 2}
        }
      },
      {
        "id": 38230,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 114761,
          "title": {"userPreferred": "A-RA-SHI : Reborn"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b114761-C2xOMuA44zKY.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b114761-C2xOMuA44zKY.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b114761-C2xOMuA44zKY.png",
            "color": "#0dbbfe"
          },
          "genres": ["Action", "Adventure", "Comedy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": null,
          "startDate": {"year": 2020, "month": 1, "day": 4},
          "updatedAt": 1720089347,
          "endDate": {"year": 2020, "month": 1, "day": 4}
        }
      },
      {
        "id": 39681,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 10033,
          "title": {"userPreferred": "Toriko"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx10033-V7xnlgAVtaVR.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx10033-V7xnlgAVtaVR.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx10033-V7xnlgAVtaVR.jpg",
            "color": "#50aef1"
          },
          "genres": ["Action", "Adventure", "Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2011, "month": 4, "day": 3},
          "updatedAt": 1720373029,
          "endDate": {"year": 2014, "month": 3, "day": 30}
        }
      },
      {
        "id": 39683,
        "relationType": "CHARACTER",
        "isMainStudio": false,
        "node": {
          "id": 813,
          "title": {"userPreferred": "Dragon Ball Z"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx813-TsHyhR3EDd2x.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx813-TsHyhR3EDd2x.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx813-TsHyhR3EDd2x.png",
            "color": "#e49343"
          },
          "genres": [
            "Action",
            "Adventure",
            "Comedy",
            "Fantasy",
            "Supernatural"
          ],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 1989, "month": 4, "day": 26},
          "updatedAt": 1720372627,
          "endDate": {"year": 1996, "month": 1, "day": 31}
        }
      },
      {
        "id": 49965,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 126649,
          "title": {
            "userPreferred": "Tokyo One Piece Tower: Tongari Shima no Dai Hihou"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b126649-sbuKTAghtsln.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b126649-sbuKTAghtsln.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b126649-sbuKTAghtsln.jpg",
            "color": "#e48628"
          },
          "genres": ["Action", "Adventure", "Comedy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2016, "month": 11, "day": 1},
          "updatedAt": 1720346878,
          "endDate": {"year": 2016, "month": 11, "day": 1}
        }
      },
      {
        "id": 57472,
        "relationType": "ADAPTATION",
        "isMainStudio": false,
        "node": {
          "id": 134184,
          "title": {"userPreferred": "Romance Dawn"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx134184-25CEkbRJEzXB.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx134184-25CEkbRJEzXB.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/bx134184-25CEkbRJEzXB.png",
            "color": "#fe9350"
          },
          "genres": ["Action", "Comedy", "Drama"],
          "type": "MANGA",
          "status": "FINISHED",
          "source": "ORIGINAL",
          "startDate": {"year": 1996, "month": 9, "day": 23},
          "updatedAt": 1720345803,
          "endDate": {"year": 1996, "month": 9, "day": 23}
        }
      },
      {
        "id": 65463,
        "relationType": "SIDE_STORY",
        "isMainStudio": false,
        "node": {
          "id": 141902,
          "title": {"userPreferred": "ONE PIECE FILM: RED"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx141902-fTyoTk8F8qOl.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx141902-fTyoTk8F8qOl.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx141902-fTyoTk8F8qOl.jpg",
            "color": "#f1c950"
          },
          "genres": [
            "Action",
            "Adventure",
            "Comedy",
            "Drama",
            "Fantasy",
            "Music"
          ],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2022, "month": 8, "day": 6},
          "updatedAt": 1720361824,
          "endDate": {"year": 2022, "month": 8, "day": 6}
        }
      },
      {
        "id": 72085,
        "relationType": "OTHER",
        "isMainStudio": false,
        "node": {
          "id": 143293,
          "title": {
            "userPreferred": "One Piece: Annecy Festival 60th Anniversary"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx143293-1ngwckHDsK95.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx143293-1ngwckHDsK95.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx143293-1ngwckHDsK95.jpg",
            "color": "#e4e443"
          },
          "genres": ["Action", "Adventure"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2021, "month": 6, "day": 16},
          "updatedAt": 1720345047,
          "endDate": {"year": 2021, "month": 6, "day": 16}
        }
      },
      {
        "id": 88670,
        "relationType": "PREQUEL",
        "isMainStudio": false,
        "node": {
          "id": 167404,
          "title": {"userPreferred": "MONSTERS: Ippaku Sanjou Hiryuu Jigoku"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx167404-QMZJVARntkbv.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx167404-QMZJVARntkbv.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx167404-QMZJVARntkbv.jpg",
            "color": "#ff931a"
          },
          "genres": ["Action", "Comedy", "Drama"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2024, "month": 1, "day": 21},
          "updatedAt": 1720372738,
          "endDate": {"year": 2024, "month": 1, "day": 21}
        }
      },
      {
        "id": 92652,
        "relationType": "ALTERNATIVE",
        "isMainStudio": false,
        "node": {
          "id": 171630,
          "title": {"userPreferred": "THE ONE PIECE"},
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx171630-CULIbflZbhK1.jpg",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx171630-CULIbflZbhK1.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx171630-CULIbflZbhK1.jpg",
            "color": null
          },
          "genres": ["Adventure"],
          "type": "ANIME",
          "status": "NOT_YET_RELEASED",
          "source": "MANGA",
          "startDate": {"year": null, "month": null, "day": null},
          "updatedAt": 1720373029,
          "endDate": {"year": null, "month": null, "day": null}
        }
      },
      {
        "id": 97805,
        "relationType": "OTHER",
        "isMainStudio": false,
        "node": {
          "id": 177475,
          "title": {
            "userPreferred":
                "ONE PIECE×KAWAISOUNI! Kono Boushi wo Omae ni Azukeru"
          },
          "coverImage": {
            "extraLarge":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx177475-8HlvUgopoH0S.png",
            "large":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx177475-8HlvUgopoH0S.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx177475-8HlvUgopoH0S.png",
            "color": "#d6ae6b"
          },
          "genres": ["Comedy", "Fantasy"],
          "type": "ANIME",
          "status": "FINISHED",
          "source": "MANGA",
          "startDate": {"year": 2024, "month": 3, "day": 3},
          "updatedAt": 1720365193,
          "endDate": {"year": 2024, "month": 3, "day": 3}
        }
      }
    ]
  },
  "characters": {
    "edges": [
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95001},
          {"id": 95650},
          {"id": 109833},
          {"id": 104940},
          {"id": 116199},
          {"id": 96289},
          {"id": 104885},
          {"id": 193998}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 5677,
          "name": {
            "first": "Lucci",
            "middle": null,
            "last": "Rob",
            "full": "Lucci Rob",
            "native": "ロブ･ルッチ",
            "userPreferred": "Lucci Rob"
          },
          "gender": "Male",
          "age": "28",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b5677-Yz8in63G7v2T.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b5677-Yz8in63G7v2T.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95003},
          {"id": 95162},
          {"id": 176921}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 59251,
          "name": {
            "first": "Tajio",
            "middle": null,
            "last": null,
            "full": "Tajio",
            "native": "タジオ",
            "userPreferred": "Tajio"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/59251.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/59251.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95003},
          {"id": 119618},
          {"id": 106595},
          {"id": 158646},
          {"id": 138007}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 43093,
          "name": {
            "first": "Koala",
            "middle": null,
            "last": null,
            "full": "Koala",
            "native": "コアラ",
            "userPreferred": "Koala"
          },
          "gender": "Female",
          "age": "23",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b43093-STjuKaQk68Ex.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b43093-STjuKaQk68Ex.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95006},
          {"id": 96000},
          {"id": 102511},
          {"id": 109115},
          {"id": 115512},
          {"id": 116195},
          {"id": 100069},
          {"id": 100886},
          {"id": 182224},
          {"id": 167445},
          {"id": 116431},
          {"id": 113867},
          {"id": 304186}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": "4Kids"},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": "Odex"},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": "4Kids"},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 4889,
          "name": {
            "first": "Hatchan",
            "middle": null,
            "last": null,
            "full": "Hatchan",
            "native": "はっちゃん",
            "userPreferred": "Hatchan"
          },
          "gender": "Male",
          "age": "36-",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/4889.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/4889.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95006},
          {"id": 96602},
          {"id": 109337},
          {"id": 184125},
          {"id": 156060},
          {"id": 272731},
          {"id": 115238}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 1541,
          "name": {
            "first": "Enel",
            "middle": null,
            "last": null,
            "full": "Enel",
            "native": "エネル",
            "userPreferred": "Enel"
          },
          "gender": "Male",
          "age": "37-",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b1541-6c8RouunoL88.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b1541-6c8RouunoL88.jpg"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95009},
          {"id": 105878},
          {"id": 134019},
          {"id": 95511},
          {"id": 215607},
          {"id": 104249}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 16342,
          "name": {
            "first": "Hancock",
            "middle": null,
            "last": "Boa",
            "full": "Hancock Boa",
            "native": "ボア・ハンコック",
            "userPreferred": "Hancock Boa"
          },
          "gender": "Female",
          "age": "29 (Initial Age), 31",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b16342-kVOF6V5Q94go.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b16342-kVOF6V5Q94go.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95015},
          {"id": 95326},
          {"id": 95010},
          {"id": 130122},
          {"id": 96108},
          {"id": 227027},
          {"id": 184128}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": "Adult", "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": "Child", "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 32893,
          "name": {
            "first": "Sabo",
            "middle": null,
            "last": null,
            "full": "Sabo",
            "native": "サボ",
            "userPreferred": "Sabo"
          },
          "gender": "Male",
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b32893-3weZS61cdwLD.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b32893-3weZS61cdwLD.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95018},
          {"id": 95320},
          {"id": 102151},
          {"id": 109113},
          {"id": 115262},
          {"id": 194110},
          {"id": 185363},
          {"id": 116891},
          {"id": 164445},
          {"id": 163443},
          {"id": 104256},
          {"id": 145495},
          {"id": 182551}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": "4Kids"},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 4884,
          "name": {
            "first": "Dragon",
            "middle": null,
            "last": "",
            "full": "Dragon",
            "native": "ドラゴン",
            "userPreferred": "Dragon"
          },
          "gender": "Male",
          "age": "53-55",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/b4884-iBn6FzQ2ESLC.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/b4884-iBn6FzQ2ESLC.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95018},
          {"id": 95666},
          {"id": 149615},
          {"id": 179633},
          {"id": 145495},
          {"id": 158214}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 17190,
          "name": {
            "first": "Calgara",
            "middle": null,
            "last": null,
            "full": "Calgara",
            "native": "カルガラ",
            "userPreferred": "Calgara"
          },
          "gender": "Male",
          "age": "39",
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/n17190-BCsc92WDAZPs.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/n17190-BCsc92WDAZPs.png"
          }
        }
      },
      {
        "role": "SUPPORTING",
        "name": null,
        "voiceActors": [
          {"id": 95020},
          {"id": 105617},
          {"id": 113867},
          {"id": 185307}
        ],
        "voiceActorRoles": [
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": null, "dubGroup": null},
          {"roleNotes": "ep 448", "dubGroup": null}
        ],
        "favouriteOrder": null,
        "node": {
          "id": 55361,
          "name": {
            "first": "Salcho",
            "middle": null,
            "last": "Achino",
            "full": "Salcho Achino",
            "native": "サルコー・アッチーノ",
            "userPreferred": "Salcho Achino"
          },
          "gender": null,
          "age": null,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/character/large/55361.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/character/medium/55361.jpg"
          }
        }
      }
    ]
  },
  "studios": {
    "edges": [
      {
        "isMain": true,
        "node": {
          "id": 18,
          "name": "Toei Animation",
          "isFavourite": false,
          "isAnimationStudio": true,
          "siteUrl": "https://anilist.co/studio/18",
          "favourites": 3215
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 102,
          "name": "Funimation",
          "isFavourite": false,
          "isAnimationStudio": false,
          "siteUrl": "https://anilist.co/studio/102",
          "favourites": 929
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 169,
          "name": "Fuji TV",
          "isFavourite": false,
          "isAnimationStudio": false,
          "siteUrl": "https://anilist.co/studio/169",
          "favourites": 76
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 2524,
          "name": "4Kids Entertainment",
          "isFavourite": false,
          "isAnimationStudio": false,
          "siteUrl": "https://anilist.co/studio/2524",
          "favourites": 29
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 416,
          "name": "TAP",
          "isFavourite": false,
          "isAnimationStudio": true,
          "siteUrl": "https://anilist.co/studio/416",
          "favourites": 4
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 142,
          "name": "Asatsu DK",
          "isFavourite": false,
          "isAnimationStudio": false,
          "siteUrl": "https://anilist.co/studio/142",
          "favourites": 4
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 207,
          "name": "Magic Bus",
          "isFavourite": false,
          "isAnimationStudio": true,
          "siteUrl": "https://anilist.co/studio/207",
          "favourites": 27
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 68,
          "name": "Mushi Production",
          "isFavourite": false,
          "isAnimationStudio": true,
          "siteUrl": "https://anilist.co/studio/68",
          "favourites": 68
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 6291,
          "name": "Studio Guts",
          "isFavourite": false,
          "isAnimationStudio": true,
          "siteUrl": "https://anilist.co/studio/6291",
          "favourites": 3
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 406,
          "name": "Asahi Production",
          "isFavourite": false,
          "isAnimationStudio": true,
          "siteUrl": "https://anilist.co/studio/406",
          "favourites": 31
        }
      },
      {
        "isMain": false,
        "node": {
          "id": 6429,
          "name": "Avex Pictures",
          "isFavourite": false,
          "isAnimationStudio": false,
          "siteUrl": "https://anilist.co/studio/6429",
          "favourites": 14
        }
      }
    ]
  },
  "isFavourite": false,
  "isAdult": false,
  "nextAiringEpisode": {
    "id": 379324,
    "airingAt": 1720917000,
    "timeUntilAiring": 543662,
    "episode": 1112,
    "mediaId": 21
  },
  "airingSchedule": {
    "nodes": [
      {
        "id": 379258,
        "airingAt": 1673137800,
        "timeUntilAiring": -47235538,
        "episode": 1046
      },
      {
        "id": 379259,
        "airingAt": 1673742600,
        "timeUntilAiring": -46630738,
        "episode": 1047
      },
      {
        "id": 379260,
        "airingAt": 1674347400,
        "timeUntilAiring": -46025938,
        "episode": 1048
      },
      {
        "id": 379261,
        "airingAt": 1674952200,
        "timeUntilAiring": -45421138,
        "episode": 1049
      },
      {
        "id": 379262,
        "airingAt": 1675557000,
        "timeUntilAiring": -44816338,
        "episode": 1050
      },
      {
        "id": 379263,
        "airingAt": 1676161800,
        "timeUntilAiring": -44211538,
        "episode": 1051
      },
      {
        "id": 379264,
        "airingAt": 1676766600,
        "timeUntilAiring": -43606738,
        "episode": 1052
      },
      {
        "id": 379265,
        "airingAt": 1677371400,
        "timeUntilAiring": -43001938,
        "episode": 1053
      },
      {
        "id": 379266,
        "airingAt": 1679185800,
        "timeUntilAiring": -41187538,
        "episode": 1054
      },
      {
        "id": 379267,
        "airingAt": 1679790600,
        "timeUntilAiring": -40582738,
        "episode": 1055
      },
      {
        "id": 379268,
        "airingAt": 1680395400,
        "timeUntilAiring": -39977938,
        "episode": 1056
      },
      {
        "id": 379269,
        "airingAt": 1681000200,
        "timeUntilAiring": -39373138,
        "episode": 1057
      },
      {
        "id": 379270,
        "airingAt": 1681605000,
        "timeUntilAiring": -38768338,
        "episode": 1058
      },
      {
        "id": 379271,
        "airingAt": 1682209800,
        "timeUntilAiring": -38163538,
        "episode": 1059
      },
      {
        "id": 379272,
        "airingAt": 1682814600,
        "timeUntilAiring": -37558738,
        "episode": 1060
      },
      {
        "id": 379273,
        "airingAt": 1683419400,
        "timeUntilAiring": -36953938,
        "episode": 1061
      },
      {
        "id": 379274,
        "airingAt": 1684629000,
        "timeUntilAiring": -35744338,
        "episode": 1062
      },
      {
        "id": 379275,
        "airingAt": 1685233800,
        "timeUntilAiring": -35139538,
        "episode": 1063
      },
      {
        "id": 379276,
        "airingAt": 1685838600,
        "timeUntilAiring": -34534738,
        "episode": 1064
      },
      {
        "id": 379277,
        "airingAt": 1686443400,
        "timeUntilAiring": -33929938,
        "episode": 1065
      },
      {
        "id": 379278,
        "airingAt": 1687653000,
        "timeUntilAiring": -32720338,
        "episode": 1066
      },
      {
        "id": 379279,
        "airingAt": 1688257800,
        "timeUntilAiring": -32115538,
        "episode": 1067
      },
      {
        "id": 379280,
        "airingAt": 1688862600,
        "timeUntilAiring": -31510738,
        "episode": 1068
      },
      {
        "id": 379281,
        "airingAt": 1689467400,
        "timeUntilAiring": -30905938,
        "episode": 1069
      },
      {
        "id": 379282,
        "airingAt": 1690677000,
        "timeUntilAiring": -29696338,
        "episode": 1070
      }
    ]
  },
  "externalLinks": [
    {
      "id": 534,
      "url": "http://www.crunchyroll.com/one-piece",
      "site": "Crunchyroll",
      "siteId": 5,
      "type": "STREAMING",
      "color": "#F88B24",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/5-AWN2pVlluCOO.png",
      "notes": null,
      "language": null
    },
    {
      "id": 967,
      "url": "http://www.toei-anim.co.jp/tv/onep/",
      "site": "Official Site",
      "siteId": 1,
      "type": "INFO",
      "color": null,
      "icon": null,
      "notes": null,
      "language": "Japanese"
    },
    {
      "id": 1711,
      "url": "http://www.hulu.com/one-piece",
      "site": "Hulu",
      "siteId": 7,
      "type": "STREAMING",
      "color": "#1CE783",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/7-rM06PQyWONGC.png",
      "notes": null,
      "language": null
    },
    {
      "id": 19200,
      "url": "https://www.netflix.com/title/80107103",
      "site": "Netflix",
      "siteId": 10,
      "type": "STREAMING",
      "color": "#E50914",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/10-rVGPom8RCiwH.png",
      "notes": null,
      "language": null
    },
    {
      "id": 34258,
      "url": "https://tubitv.com/series/300006454/one-piece",
      "site": "Tubi TV",
      "siteId": 30,
      "type": "STREAMING",
      "color": "#F79937",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/30-H2h0Fxnog1Pr.png",
      "notes": null,
      "language": null
    },
    {
      "id": 47414,
      "url": "https://www.bilibili.tv/media/37976",
      "site": "Bilibili TV",
      "siteId": 119,
      "type": "STREAMING",
      "color": "#00A1D6",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/119-NCwGvCjFADGQ.png",
      "notes": null,
      "language": null
    },
    {
      "id": 47415,
      "url": "https://www.iq.com/album/1bk9icvr331",
      "site": "iQ",
      "siteId": 122,
      "type": "STREAMING",
      "color": "#00CC36",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/122-EPBJ2E0oPt5C.png",
      "notes": null,
      "language": null
    },
    {
      "id": 47416,
      "url": "https://wetv.vip/en/play/tnfk3rniubz3m8o",
      "site": "WeTV",
      "siteId": 131,
      "type": "STREAMING",
      "color": "#2FA3F9",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/131-5sN08ZCe7HKZ.png",
      "notes": null,
      "language": null
    },
    {
      "id": 49307,
      "url": "https://twitter.com/Eiichiro_Staff/",
      "site": "Twitter",
      "siteId": 17,
      "type": "SOCIAL",
      "color": "#000000",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/17-R0tMgOvwvhsS.png",
      "notes": null,
      "language": "Japanese"
    },
    {
      "id": 80324,
      "url":
          "https://play.hbomax.com/page/urn:hbo:page:GYmhnMggKRBymmwEAAADe:type:series",
      "site": "HBO Max",
      "siteId": 25,
      "type": "STREAMING",
      "color": "#991EEB",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/25-w4HqrEsxtHJJ.png",
      "notes": null,
      "language": null
    },
    {
      "id": 85429,
      "url": "https://www.youtube.com/@onepieceofficial",
      "site": "YouTube",
      "siteId": 13,
      "type": "STREAMING",
      "color": "#FF0000",
      "icon":
          "https://s4.anilist.co/file/anilistcdn/link/icon/13-ZwR1Xwgtyrwa.png",
      "notes": null,
      "language": null
    }
  ],
  "siteUrl": "https://anilist.co/anime/21",
  "rankings": [
    {
      "id": 21,
      "rank": 21,
      "type": "RATED",
      "format": "TV",
      "year": null,
      "season": null,
      "allTime": true
    },
    {
      "id": 513,
      "rank": 13,
      "type": "POPULAR",
      "format": "TV",
      "year": null,
      "season": null,
      "allTime": true
    },
    {
      "id": 1594,
      "rank": 1,
      "type": "RATED",
      "format": "TV",
      "year": 1999,
      "season": null,
      "allTime": false
    },
    {
      "id": 1655,
      "rank": 1,
      "type": "POPULAR",
      "format": "TV",
      "year": 1999,
      "season": null,
      "allTime": false
    }
  ],
  "staff": {
    "edges": [
      {
        "node": {
          "name": {
            "first": "Vic",
            "middle": null,
            "last": "Mignogna",
            "full": "Vic Mignogna",
            "native": "Victor Joseph Mignogna",
            "userPreferred": "Vic Mignogna"
          },
          "id": 95043,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n95043-cgQunZolvkPW.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n95043-cgQunZolvkPW.png"
          },
          "description":
              "Victor Joseph Mignogna was born in Greensburg, Pennsylvania. He was always interested in drama, film, music,acting, and majored in Film in college. Vic spent approximately ten years acting in independent films and composing, transposing and producing music for ad agencies, TV series, and movies. \n\nIn 1998, through a connection from a work associate at the time, Vic made his debut as Vega in \"Street Fighter 2\" under ADV Films. Vic enjoyed the anime dubbing experience and continued working for ADV. Soon, he landed his first main character role as Gawl in \"Generator Gawl\". Over time, Vic also began working for FUNimation Entertainment, and moved from Houston, Texas to Los Angeles, California to continue work there in late 2008. In February 2019, studios Funimation and Rooster Teeth cut ties with Mignogna after a number of sexual harassment allegations surfaced. Mignogna has denied the allegations and filed a lawsuit against Funimation and several individuals in April 2019 alleging defamation and tortious interference, however, the case was dismissed on October 2019 and he was ordered by the court to pay the defendants\u0027 legal fees. Mignogna lost his appeals from Funimation and their actors in 2022.\n\nSince then, his acting career has relatively stalled, though he remains active on social media and continues to attend fan conventions. He founded dubbing studio \"AM Studios\" in partnership with the Anime Matsuri convention. \n\n__Music:__\nVic has continued his music career, releasing five albums, Selah (original piano music), Metafiction (original music, including the anime-related songs Nothing I Won\u0027t Give [Fullmetal Alchemist]) and Soldier A, saluting the generic soldiers of anime), If These Walls Could Talk (original music), a Christmas album (including 2 original songs), and Selah II (the sequel to Selah, also original piano compositions). His sixth album, which is a remix album, remixing some of his original songs and some popular songs, is set to be released in February of 2010. This album also contains Vic\u0027s English version of the Brothers Theme from \"Fullmetal Alchemist\" and the English version of the \"D.N.Angel\" opening theme, True Light, both of which are licensed.\n\n__Roles:__\nVic has now appeared in approximately 150 anime series and video games, and has sung many English dub theme songs, most notably in the FUNimation dub of \"One Piece\". He is best known for his roles as Edward Elric from \"Fullmetal Alchemist\", Tamaki Suoh from \"Ouran High School Host Club\", Broly from \"Dragon Ball Z\", Fai D. Flowrite from \"Tsubasa Chronicle\", Zero Kiryu from \"Vampire Knight\", Spirit (Death Scythe) from \"Soul Eater\", Dark Mousy from \"D.N.Angel\", Kurz Weber from \"Full Metal Panic\", and Ikkaku Madarame from \"Bleach\". He made his directorial debut in \"Claymore\", in which he also plays the role of Rigaldo. Vic won Best Actor at the American-Anime-Awards for his role of Edward Elric in \"Fullmetal Alchemist\"."
        },
        "role": "Theme Song Performance (English; OP1, OP3, ED11)"
      },
      {
        "node": {
          "name": {
            "first": "Mike",
            "middle": null,
            "last": "McFarland",
            "full": "Mike McFarland",
            "native": null,
            "userPreferred": "Mike McFarland"
          },
          "id": 95202,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/202.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/202.jpg"
          },
          "description":
              "__Mike McFarland__ is an American voice actor, ADR Director, Script, and Line Producer at Funimation Entertainment."
        },
        "role": "ADR Director (English)"
      },
      {
        "node": {
          "name": {
            "first": "Justin",
            "middle": "Ryan",
            "last": "Cook",
            "full": "Justin Cook",
            "native": null,
            "userPreferred": "Justin Ryan Cook"
          },
          "id": 95203,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n95203-S3aCVxUoYwJl.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n95203-S3aCVxUoYwJl.jpg"
          },
          "description":
              "__Cousin:__ [Aaron Dismuke](https://anilist.co/staff/95254/Aaron-Dismuke)\n\n__Justin Ryan Cook__ is an American voice actor, producer, line producer, ADR director and enginner who works for FUNimation."
        },
        "role": "Producer (English)"
      },
      {
        "node": {
          "name": {
            "first": "Caitlin",
            "middle": null,
            "last": "Glass",
            "full": "Caitlin Glass",
            "native": null,
            "userPreferred": "Caitlin Glass"
          },
          "id": 95313,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n95313-zK3WpeNtACvm.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n95313-zK3WpeNtACvm.jpg"
          },
          "description":
              "\n[Twitter](https://twitter.com/caitlinsvoice) | [Facebook](https://www.facebook.com/caitlinsvoice/) | [Myspace](https://myspace.com/caitlintiffany) | [Blog](https://kiristokyoto.livejournal.com/)\n\nAn American voice actor, voice director, and script writer for Funimation, New Generation Pictures, and Bang Zoom! Entertainment. She\u0027s been working in the anime industry since 2004. She grew up in the San Diego area, California, and has been married to Tony Patterson since 2009. Outside of voice acting, Caitlin has worked as an ESL teacher in Spain."
        },
        "role": "Theme Song Performance (English; ED2, ED7, ED10)"
      },
      {
        "node": {
          "name": {
            "first": "Stephanie",
            "middle": null,
            "last": "Young",
            "full": "Stephanie Young",
            "native": null,
            "userPreferred": "Stephanie Young"
          },
          "id": 95475,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n95475-QV9KFgsYrsPb.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n95475-QV9KFgsYrsPb.jpg"
          },
          "description":
              "Stephanie Young is an American voice actress who works for anime series of FUNimation Entertainment. She has provided voices for a number of English language versions of Japanese anime films. She is also a jazz singer, currently being the lead vocalist in her husband\u0027s band, \"The Brehm\u0027s\"."
        },
        "role": "Theme Song Performance (English; ED4, ED12)"
      },
      {
        "node": {
          "name": {
            "first": "Meredith",
            "middle": null,
            "last": "McCoy",
            "full": "Meredith McCoy",
            "native": null,
            "userPreferred": "Meredith McCoy"
          },
          "id": 95535,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/535.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/535.jpg"
          },
          "description": null
        },
        "role": "Theme Song Performance (English; OP2)"
      },
      {
        "node": {
          "name": {
            "first": "Brina",
            "middle": null,
            "last": "Palencia",
            "full": "Brina Palencia",
            "native": null,
            "userPreferred": "Brina Palencia"
          },
          "id": 95659,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/659.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/659.jpg"
          },
          "description":
              "[Twitter](https://twitter.com/brinapalencia) | [Instagram](https://www.instagram.com/brinakins/) | [Facebook](https://www.facebook.com/brina.palencia.7)\n\nBrina Michelle Palencia is an American voice actress who has voiced a number of English-language versions of characters featured in anime. She\u0027s a graduate of University of North Texas. [Gino Palencia](https://anilist.co/staff/104093), her brother, also works for Funimation.\n\n(Source: Wikipedia)"
        },
        "role": "Theme Song Performance (English; OP4, ED1)"
      },
      {
        "node": {
          "name": {
            "first": "Leah",
            "middle": null,
            "last": "Clark",
            "full": "Leah Clark",
            "native": null,
            "userPreferred": "Leah Clark"
          },
          "id": 95859,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/859.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/859.jpg"
          },
          "description": null
        },
        "role": "Theme Song Performance (English; ED6)"
      },
      {
        "node": {
          "name": {
            "first": "Jeremy",
            "middle": null,
            "last": "Inman",
            "full": "Jeremy Inman",
            "native": null,
            "userPreferred": "Jeremy Inman"
          },
          "id": 96339,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/1339.jpg",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/1339.jpg"
          },
          "description": null
        },
        "role": "ADR Director (English; eps 131-135)"
      },
      {
        "node": {
          "name": {
            "first": "Eiichirou",
            "middle": null,
            "last": "Oda",
            "full": "Eiichirou Oda",
            "native": "尾田栄一郎",
            "userPreferred": "Eiichirou Oda"
          },
          "id": 96881,
          "image": {
            "large":
                "https://s4.anilist.co/file/anilistcdn/staff/large/n96881-Cyv6wFJxpDw7.png",
            "medium":
                "https://s4.anilist.co/file/anilistcdn/staff/medium/n96881-Cyv6wFJxpDw7.png"
          },
          "description":
              "__Favorite Animal:__ Big gentle dogs\n__Favorite Mangaka:__ [Akira Toriyama](https://anilist.co/staff/96901/Akira-Toriyama)\n__Favorite Music:__ \u002770s soul music\n__Favorite Real-Life Pirate:__ Edward Teach (Blackbeard)\n__Favorite Video Game:__ Puyo Puyo\n__Trivia:__\n- Oda is married to Chiaki Inaba, who had played Nami during Jump Festa One Piece stage performances.\n- In a recent Japanese fan poll, Oda is currently ranked the 48th Most Popular Character in [One Piece](https://anilist.co/manga/30013/One-Piece/), despite the fact that he has never included himself in any issue of the manga (excluding SBS).\n- He voiced the character [\"Odacchi\" (オダッチ)](https://anilist.co/character/12281/Eiichirou-Oda) in a [soccer-themed short](https://anilist.co/anime/2386/ONE-PIECE-Yume-no-Soccer-Ou/) that aired with the [3rd One Piece Movie](https://anilist.co/anime/461/One-Piece-Choppers-Kingdom-on-the-Island-of-Strange-Animals/). \"Odacchi\" is Oda\u0027s nickname, and he played soccer when he was younger.\n- Oda is a fan of rapper Eminem, filmmaker Quentin Tarantino and [Tim Burton](https://anilist.co/staff/323667/Timothy-Walter-Burton).\n- Oda\u0027s 3 favorite movies are Seven Samurai, The Nightmare Before Christmas, and Young Guns.\n- According to Oda in an interview for US Shonen Jump, his favorite villain in One Piece is [Buggy the Clown](https://anilist.co/character/725/Buggy) (he joked that he literally threw him together)."
        },
        "role": "Original Creator"
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
