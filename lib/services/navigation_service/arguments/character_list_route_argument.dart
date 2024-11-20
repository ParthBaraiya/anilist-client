import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';

class CharacterListRouteArgument {
  final Characters characters;

  const CharacterListRouteArgument({
    required this.characters,
  });
}
