import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/utilities/extensions/string.dart';
import 'package:anilist_client/view/tiles/image_tile_with_backdrop_filtered_title.dart';
import 'package:flutter/material.dart';

class AnimeRelationTile extends StatelessWidget {
  const AnimeRelationTile({
    super.key,
    required this.relation,
    required this.onTap,
  });

  final MediaRelation relation;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ImageTileWithBackdropFilteredTitle(
        imageUrl: relation.node?.coverImage?.medium ?? 'N/A',
        title: relation.relationType.display.capitalized,
        backdropColor:
            relation.node!.coverImage!.color?.toColor.withOpacity(0.2),
      ),
    );
  }
}
