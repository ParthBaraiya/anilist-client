import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';
import 'package:anilist_client/utilities/bloc_states/data_fetch_state.dart';

class SearchAnimeState extends DataFetchState {
  final List<SearchedAnime> data;
  final bool hasMore;

  const SearchAnimeState.idle()
      : data = const [],
        hasMore = false,
        super(state: NetworkState.idle);

  const SearchAnimeState.error({
    required super.error,
    this.data = const [],
  })  : hasMore = false,
        super(state: NetworkState.error);

  const SearchAnimeState.loading({
    this.hasMore = false,
    this.data = const [],
  }) : super(state: NetworkState.loading, error: null);

  const SearchAnimeState.success({
    required this.data,
    required this.hasMore,
  }) : super(state: NetworkState.success, error: null);
}
