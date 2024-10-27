import 'package:anilist_client/modules/anime_details/data/anime_details_data_store.dart';
import 'package:anilist_client/modules/anime_details/domain/anime_details_events.dart';
import 'package:anilist_client/modules/anime_details/domain/anime_details_state.dart';
import 'package:bloc/bloc.dart';

class AnimeDetailsBloc extends Bloc<AnimeDetailsEvent, AnimeDetailsState> {
  final AnimeDetailsDataStore _datastore;

  AnimeDetailsBloc({required int id})
      : _datastore = AnimeDetailsDataStore(id: id),
        super(AnimeDetailsState.idle()) {
    on<AnimeDetailsFetchEvent>(_handleFetchEvent);
  }

  Future<void> _handleFetchEvent(
      AnimeDetailsFetchEvent event, Emitter emit) async {
    if (state.state.isLoading) return;

    emit(AnimeDetailsState.loading(details: _datastore.details));

    final details = await _datastore.fetchDetails();

    emit(AnimeDetailsState.success(details: details));
  }
}
