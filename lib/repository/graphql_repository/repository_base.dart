import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';

abstract class ApiRepositoryBase {
  Future<void> getMediaById(MediaDetailsQuery query);
}
