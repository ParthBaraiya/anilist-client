import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/queries/anime_brief_list_query.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';
import 'package:async_utility/async_utility.dart';

class SearchAnimeDataStore {
  static const count = 20;

  final _asyncQueue = AsyncQueue();

  final _anime = <SearchedAnime>[];
  bool _hasNextPage = true;
  int currentPage = 0;
  String _query = '';

  bool get hasMore => _hasNextPage;

  Future<List<SearchedAnime>> searchAnime(String query) async {
    return (await _asyncQueue.invoke(() async {
          _query = query;
          currentPage = 1;

          final response =
              await AppConfig.repository.listMedia(AnimeBriefListQuery(
            page: currentPage,
            count: count,
            search: query,
          ));

          // If the query on the start and the query that is cached is same then only
          // the response matters.
          // Else the response will become invalid.
          //
          _anime.clear();
          _saveData(response);

          return _anime;
        })) ??
        [];
  }

  Future<List<SearchedAnime>> getNextPage() async {
    if (!_hasNextPage) return Future.value(_anime);

    final response = await AppConfig.repository.listMedia(AnimeBriefListQuery(
      page: ++currentPage,
      count: count,
      search: _query,
    ));

    // If the query on the start and the query that is cached is same then only
    // the response matters.
    // Else the response will become invalid.
    //
    _saveData(response);

    return _anime;
  }

  void _saveData(SearchAnimeResponse response) {
    _anime.addAll(response.media ?? []);
    _hasNextPage = response.pageInfo?.hasNextPage ?? true;
  }
}
