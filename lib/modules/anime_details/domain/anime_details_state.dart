import 'package:anilist_client/models/anime_zone_error.dart';
import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/utilities/bloc_states/data_fetch_state.dart';

class AnimeDetailsState extends DataFetchState {
  final MediaDetails? details;

  AnimeDetailsState.idle()
      : details = null,
        super(state: NetworkState.idle);

  AnimeDetailsState.loading({
    this.details,
  }) : super(state: NetworkState.loading);

  AnimeDetailsState.success({
    required MediaDetails details,
  })  : details = details,
        super(state: NetworkState.success);

  AnimeDetailsState.error({
    required AnimeZoneError error,
    this.details,
  }) : super(state: NetworkState.success, error: error);
}
