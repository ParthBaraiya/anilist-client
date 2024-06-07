import 'package:anilist_client/modules/search/data/search_anime_data_store.dart';
import 'package:anilist_client/modules/search/domain/search_page_events.dart';
import 'package:anilist_client/modules/search/domain/search_page_states.dart';
import 'package:bloc/bloc.dart';

class SearchAnimeBloc extends Bloc<SearchAnimeScreenEvent, SearchAnimeState> {
  SearchAnimeBloc() : super(SearchAnimeState.idle()) {
    on<SearchAnimeSearchEvent>(_handleSearch);
    on<SearchAnimeNextPageEvent>(_handleNextPage);
  }

  // This can be provided using dependency injection.
  final _dataStore = SearchAnimeDataStore();

  Future<void> _handleSearch(
      SearchAnimeSearchEvent event, Emitter<SearchAnimeState> emit) async {
    if (state.state.isLoading) return;

    emit(SearchAnimeState.loading());

    final result = await _dataStore.searchAnime(event.query);

    emit(SearchAnimeState.success(
      data: result,
      hasMore: _dataStore.hasMore,
    ));
  }

  Future<void> _handleNextPage(
      SearchAnimeNextPageEvent event, Emitter<SearchAnimeState> emit) async {
    if (state.state.isLoading) return;

    emit(SearchAnimeState.loading(
      hasMore: true,
      data: state.data,
    ));

    final result = await _dataStore.getNextPage();

    emit(SearchAnimeState.success(
      data: result,
      hasMore: _dataStore.hasMore,
    ));
  }
}
