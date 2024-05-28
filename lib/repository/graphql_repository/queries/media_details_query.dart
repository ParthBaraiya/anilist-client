import 'package:anilist_client/repository/graphql_repository/queries/graphql_query.dart';

class MediaDetailsQuery extends GraphqlQuery {
  final int id;

  const MediaDetailsQuery({
    required this.id,
  });

  @override
  String get query => '''
    Media(id: \$id) {
      id
      idMal
      title {
        romaji
        english
        native
        userPreferred
      }
      type
      format
      status
      description
      startDate {
        year
        month
        day
      }
      endDate {
        year
        month
        day
      }
      season
      seasonYear
      seasonInt
      episodes
      duration
      chapters
      volumes
      countryOfOrigin
      isLicensed
      source
      hashtag
      trailer {
        id
      }
      updatedAt
      coverImage {
        extraLarge
        large
        medium
        color
      }
      bannerImage
      genres
      synonyms
      averageScore
      meanScore
      popularity
      isLocked
      trending
      favourites
      tags {
        id
      }
      relations {
        edges {
          id
        }
      }
      characters {
        edges {
          id
        }
      }
      staff {
        edges {
          id
        }
      }
      studios {
        edges {
          id
        }
      }
      isFavourite
      isFavouriteBlocked
      isAdult
      nextAiringEpisode {
        id
      }
      airingSchedule {
        edges {
          id
        }
      }
      trends {
        edges {
          node {
            averageScore
            popularity
            inProgress
            episode
          }
        }
      }
      externalLinks {
        id
      }
      streamingEpisodes {
        title
        thumbnail
        url
        site
      }
      rankings {
        id
      }
      mediaListEntry {
        id
      }
      reviews {
        edges {
          node {
            id
          }
        }
      }
      recommendations {
        edges {
          node {
            id
          }
        }
      }
      stats {
        scoreDistribution {
          score
          amount
        }
        statusDistribution {
          status
          amount
        }
      }
      siteUrl
      autoCreateForumThread
      isRecommendationBlocked
      isReviewBlocked
      modNotes
    }
  ''';

  @override
  Map<String, dynamic> get variables => {
        "id": id,
      };
}
