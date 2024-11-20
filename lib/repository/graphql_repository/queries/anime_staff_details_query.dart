import 'package:anilist_client/repository/graphql_repository/queries/common/graphql_query.dart';

class MediaStaffListQuery extends GraphqlQuery {
  const MediaStaffListQuery({
    required this.count,
    required this.page,
    required this.mediaId,
  });

  final int mediaId;
  final int count;
  final int page;

  @override
  String get query => '''
    Media(id: \$id) {
      staff(page: \$page, pageInfo: \$perPage) {
        edges{
          id
          relationType
          isMainStudio
          node {
            id
            title {
              userPreferred
            }
            coverImage {
              extraLarge
              large
              medium
              color
            }
            genres
            type
            status
            source
            startDate {
              year
              month
              day
            }
            updatedAt
            endDate {
              year
              month
              day
            }
          }
        }
      }
    }
  ''';

  @override
  Map<String, dynamic> get variables => {
        "id": mediaId,
        "page": page,
        "perPage": count,
      };
}
