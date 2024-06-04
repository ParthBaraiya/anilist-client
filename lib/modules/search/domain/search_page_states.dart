import 'package:anilist_client/models/anime_zone_error.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';
import 'package:anilist_client/values/enums.dart';

class SearchAnimeState {
  final NetworkState state;
  final List<SearchedAnime> data;
  final bool hasMore;
  final AnimeZoneError? error;

  const SearchAnimeState.idle()
      : state = NetworkState.idle,
        data = const [],
        error = null,
        hasMore = false;

  const SearchAnimeState.error({
    required this.error,
    this.data = const [],
  })  : state = NetworkState.error,
        hasMore = false;

  const SearchAnimeState.loading({
    this.hasMore = false,
    this.data = const [],
  })  : state = NetworkState.loading,
        error = null;

  const SearchAnimeState.success({
    required this.data,
    required this.hasMore,
  })  : state = NetworkState.success,
        error = null;
}
