import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/queries/anime_brief_list_query.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';

class SearchAnimeDataStore {
  static const count = 20;

  final _anime = <SearchedAnime>[];
  bool _hasNextPage = true;
  int currentPage = 0;
  String _query = '';

  bool get hasMore => _hasNextPage;

  Future<List<SearchedAnime>> searchAnime(String query) async {
    final _currentQuery = query;

    _query = query;

    final response = await AppConfig.repository.listMedia(AnimeBriefListQuery(
      page: currentPage,
      count: count,
      search: query,
    ));

    // If the query on the start and the query that is cached is same then only
    // the response matters.
    // Else the response will become invalid.
    //
    if (_currentQuery == _query) {
      _anime.clear();
      _saveData(response);
    }

    return _anime;
  }

  Future<List<SearchedAnime>> getNextPage() async {
    if (!_hasNextPage) return Future.value(_anime);

    final currentQuery = _query;

    final response = await AppConfig.repository.listMedia(AnimeBriefListQuery(
      page: ++currentPage,
      count: count,
      search: _query,
    ));

    // If the query on the start and the query that is cached is same then only
    // the response matters.
    // Else the response will become invalid.
    //
    if (currentQuery == _query) {
      _saveData(response);
    }

    return _anime;
  }

  void _saveData(SearchAnimeResponse response) {
    _anime.addAll(response.media ?? []);
    _hasNextPage = response.pageInfo?.hasNextPage ?? true;
  }
}
