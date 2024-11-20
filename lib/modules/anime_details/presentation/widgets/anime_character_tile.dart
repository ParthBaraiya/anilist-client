import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/view/tiles/image_tile_with_backdrop_filtered_title.dart';
import 'package:flutter/material.dart';

class AnimeCharacterTile extends StatelessWidget {
  const AnimeCharacterTile({
    super.key,
    required this.character,
    required this.onTap,
  });

  final CharacterMeta character;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ImageTileWithBackdropFilteredTitle(
        imageUrl: character.node?.image?.medium ?? 'N/A',
        title: character.role.display,
      ),
    );
  }
}
