import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/view/tiles/image_tile_with_backdrop_filtered_title.dart';
import 'package:flutter/material.dart';

class AnimeStaffTitle extends StatelessWidget {
  const AnimeStaffTitle({
    super.key,
    required this.staff,
    required this.onTap,
  });

  final StaffData staff;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ImageTileWithBackdropFilteredTitle(
        imageUrl: staff.node?.image?.medium ?? 'N/A',
        title: staff.role ?? 'N/A',
      ),
    );
  }
}
