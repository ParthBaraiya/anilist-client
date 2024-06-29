class AnimeDetailsEvent {
  const AnimeDetailsEvent();
}

class AnimeDetailsFetchEvent extends AnimeDetailsEvent {
  final bool force;

  const AnimeDetailsFetchEvent({
    this.force = false,
  });
}
