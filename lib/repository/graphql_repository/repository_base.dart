import 'package:anilist_client/repository/graphql_repository/queries/anime_brief_list_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';

abstract class ApiRepositoryBase {
  Future<void> getMediaById(MediaDetailsQuery query);

  Future<void> listMedia(AnimeBriefListQuery query);
}
