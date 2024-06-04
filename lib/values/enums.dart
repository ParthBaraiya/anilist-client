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
