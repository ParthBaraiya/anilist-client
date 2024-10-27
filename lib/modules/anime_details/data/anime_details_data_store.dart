import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';

class AnimeDetailsDataStore {
  final int id;

  AnimeDetailsDataStore({
    required this.id,
  });

  MediaDetails? details;

  Future<MediaDetails> fetchDetails() async {
    details =
        await AppConfig.repository.getMediaById(MediaDetailsQuery(id: id));

    return details!;
  }
}
