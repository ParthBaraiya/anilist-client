import 'package:anilist_client/models/anime_zone_error.dart';

enum NetworkState {
  idle,
  loading,
  success,
  error;

  bool get isIdle => this == NetworkState.idle;
  bool get isLoading => this == NetworkState.loading;
  bool get isSuccess => this == NetworkState.success;
  bool get isError => this == NetworkState.error;
}

class DataFetchState {
  final NetworkState state;
  final AnimeZoneError? error;

  const DataFetchState({
    required this.state,
    this.error,
  });
}
