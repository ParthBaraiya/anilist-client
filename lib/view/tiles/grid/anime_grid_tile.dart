import 'dart:ui';

import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/utilities/extensions/string.dart';
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
          context.snackBar("Can not get anime id.");
        } else {
          AppConfig.repository
              .getMediaById(MediaDetailsQuery(id: anime.id ?? 0));
        }
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              anime.coverImage?.large ?? '',
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(4, 2),
              blurRadius: 20,
              spreadRadius: -5,
            )
          ],
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
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
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          anime.title?.userPreferred ?? "N/A",
                          style: AppConfig.theme.captionTextStyle,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                        ),
                        Divider(
                          color: AppConfig.theme.textFieldTextColor,
                        ),
                        Text(
                          (anime.genres ?? []).take(2).join(" | "),
                          style: AppConfig.theme.captionTextStyle,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
