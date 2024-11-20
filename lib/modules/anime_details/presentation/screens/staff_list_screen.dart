import 'package:anilist_client/modules/anime_details/presentation/widgets/anime_staff_tile.dart';
import 'package:anilist_client/repository/graphql_repository/responses/anime_details_response.dart';
import 'package:anilist_client/view/scaffolds/animwatch_default_scaffold.dart';
import 'package:anilist_client/view/titles/ani_watch_page_title.dart';
import 'package:flutter/material.dart' hide Characters;

class MediaStaffListScreen extends StatelessWidget {
  const MediaStaffListScreen({
    super.key,
    required this.staffDetails,
  });

  final MediaStaff staffDetails;

  @override
  Widget build(BuildContext context) {
    return AniWatchDefaultScaffold(
      child: SafeArea(
        child: Column(
          children: [
            AniWatchPageTitle(
              title: 'Characters',
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 40,
                  left: 30,
                  right: 30,
                ),
                itemCount: staffDetails.edges.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (_, index) {
                  final staff = staffDetails.edges[index];

                  return AnimeStaffTitle(
                    staff: staff,
                    onTap: () {
                      // TODO(parth): Go to details...
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
