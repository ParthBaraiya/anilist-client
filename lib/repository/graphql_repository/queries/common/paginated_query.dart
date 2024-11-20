import 'package:anilist_client/repository/graphql_repository/queries/common/graphql_query.dart';

abstract class PaginatedGraphQlQuery extends GraphqlQuery {
  const PaginatedGraphQlQuery();

  int get page;
  int get count;
  String get itemQuery;
  Map<String, dynamic> get itemQueryVariables;

  @override
  String get query => '''
    Page(page: \$page, perPage: \$count) {
      pageInfo {
        hasNextPage
      }
      $itemQuery
    }
  ''';

  @override
  Map<String, dynamic> get variables => {
        "page": page,
        "count": count,
        ...itemQueryVariables,
      };
}
