import 'package:anilist_client/repository/graphql_repository/queries/anime_brief_list_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/anime_staff_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';

abstract class ApiRepositoryBase {
  Future<MediaDetails> getMediaById(MediaDetailsQuery query);

  Future<SearchAnimeResponse> listMedia(AnimeBriefListQuery query);

  Future<void> listStaffForMedia(MediaStaffListQuery query);
}
