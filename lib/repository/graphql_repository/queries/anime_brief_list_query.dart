import 'package:anilist_client/repository/graphql_repository/queries/common/paginated_query.dart';

class AnimeBriefListQuery extends PaginatedGraphQlQuery {
  final int _count;
  final int _page;
  final String? search;

  const AnimeBriefListQuery({
    int count = 20,
    required int page,
    this.search,
  })  : _count = count,
        _page = page;

  @override
  int get count => _count;

  @override
  String get itemQuery => '''
    media${search == null ? '' : '(search: \$search)'} {
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
        if (search != null) "search": search,
      };

  @override
  int get page => _page;
}
