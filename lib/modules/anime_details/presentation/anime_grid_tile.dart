import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';
import 'package:anilist_client/services/navigation_service/app_pages.dart';
import 'package:anilist_client/services/navigation_service/arguments/anime_details_route_argument.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/utilities/extensions/string.dart';
import 'package:anilist_client/view/tiles/image_tile_with_backdrop_filtered_child.dart';
import 'package:flutter/material.dart';

class AnimeGridTile extends StatelessWidget {
  const AnimeGridTile({
    super.key,
    required this.anime,
  });

  final SearchedAnime anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (anime.id == null) {
          context.snackBar("Unable to get anime id.");
        } else {
          context.push(
            route: AppPages.details,
            args: AnimeDetailsRouteArgument(
              id: anime.id!,
            ),
          );
        }
      },
      child: ImageTileWithBackdropFilterChild(
        imageUrl: anime.coverImage?.large ?? '',
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(4, 2),
              blurRadius: 20,
              spreadRadius: -5,
            )
          ],
        ),
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              (anime.coverImage?.color?.toColor ?? Colors.black)
                  .withOpacity(0.3),
              (anime.coverImage?.color?.toColor ?? Colors.black)
                  .withOpacity(0.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        blur: 20,
        backdropColor:
            (anime.coverImage?.color?.toColor ?? Colors.black).withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                anime.title?.userPreferred ?? "N/A",
                style: AppConfig.theme.captionTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                textAlign: TextAlign.start,
              ),
              Divider(color: AppConfig.theme.textFieldTextColor),
              Text(
                (anime.genres ?? []).take(2).join(" | "),
                style: AppConfig.theme.captionTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
