import 'package:anilist_client/repository/graphql_repository/queries/paginated_query.dart';

class AnimeBriefListQuery extends PaginatedGraphQlQuery {
  final int _count;
  final int _page;
  final String search;

  const AnimeBriefListQuery({
    required int count,
    required int page,
    required this.search,
  })  : _count = count,
        _page = page;

  @override
  int get count => _count;

  @override
  String get itemQuery => '''
    media(search: \$search) {
      id
      title {
        userPreferred
      }
      type
      format
      coverImage {
        extraLarge
        large
        medium
        color
      }
      genres
    }
  ''';

  @override
  Map<String, dynamic> get itemQueryVariables => {
        "search": search,
      };

  @override
  int get page => _page;
}