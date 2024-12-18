import 'package:anilist_client/repository/graphql_repository/queries/common/graphql_query.dart';

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
        site
        thumbnail
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
        name
        isAdult
        rank
        description
        category
        isGeneralSpoiler
        isMediaSpoiler
      }
      relations {
        edges{
          id
          relationType
          node {
            id
            coverImage {
              extraLarge
              large
              medium
              color
            }
          }
        }
      }
      characters {
        edges {
          role
          node {
            id
            image {
              large
              medium
            }
          }
        }
      }
      studios {
        edges {
          isMain
          node {
            id
            name
            isFavourite
            isAnimationStudio
            siteUrl
            favourites
          }
        }
      }
      isFavourite
      isAdult
      nextAiringEpisode {
        id
        airingAt
        timeUntilAiring
        episode
        mediaId
      }
      airingSchedule {
        nodes {
          id
          airingAt
          timeUntilAiring
          episode
        }
      }
      externalLinks {
        id
        url
        site
        siteId
        type
        color
        icon
        notes
        language
      }
      siteUrl
      rankings {
        id
        rank
        type
        format
        year
        season
        allTime
      }
      staff {
        edges {
          role
          node {
            name {
              first
              middle
              last
              full
              native
              userPreferred
            }
            id
            image {
              large
              medium
            }
            description
          }
        }
      }
    }
  ''';

  @override
  Map<String, dynamic> get variables => {
        "id": id,
      };
}

/// Additional Params

///
/// staff {
///         nodes {
///           id
///           name {
///             first
///             middle
///             last
///             full
///             native
///             userPreferred
///           }
///           image {
///             large
///             medium
///           }
///           siteUrl
///         }
///       }
/// isFavouriteBlocked
/// trends {
///         nodes {
///           mediaId
///           date
///           trending
///           averageScore
///           popularity
///           inProgress
///           releasing
///           episode
///         }
///       }
/// streamingEpisodes {
///         title
///         thumbnail
///         url
///         site
///       }

///        mediaListEntry {
///         id
///         userId
///         mediaId
///         status
///         score
///         progress
///         progressVolumes
///         repeat
///         priority
///
///       }
///       reviews {
///         nodes {
///
///           id
///         }
///       }
///  recommendations {
///         nodes {
///
///         id
///           mediaRecommendation {
///             id
///             title {
///               romaji
///               english
///               native
///               userPreferred
///             }
///             type
///
///           }
///         }
///       }
/// stats {
///         scoreDistribution {
///           score
///           amount
///         }
///         statusDistribution {
///           status
///           amount
///         }
///       }
///  autoCreateForumThread
///       isRecommendationBlocked
///       isReviewBlocked
///       modNotes
///
