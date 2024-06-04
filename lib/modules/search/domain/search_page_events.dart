abstract class SearchAnimeScreenEvent {
  const SearchAnimeScreenEvent();
}

class SearchAnimeSearchEvent extends SearchAnimeScreenEvent {
  final String query;

  const SearchAnimeSearchEvent({
    required this.query,
  });
}

class SearchAnimeNextPageEvent extends SearchAnimeScreenEvent {
  const SearchAnimeNextPageEvent();
}
