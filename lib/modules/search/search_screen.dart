import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/values/resources/fontawesome_icons.dart';
import 'package:anilist_client/view/anime_zone_hero.dart';
import 'package:anilist_client/view/form_fields/ani_list_search_bar.dart';
import 'package:anilist_client/view/scaffolds/animwatch_default_scaffold.dart';
import 'package:flutter/material.dart';

class SearchAnime extends StatefulWidget {
  const SearchAnime({super.key});

  @override
  State<SearchAnime> createState() => _SearchAnimeState();
}

class _SearchAnimeState extends State<SearchAnime> {
  @override
  Widget build(BuildContext context) {
    return AniWatchDefaultScaffold(
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: context.pop,
                      child: Icon(
                        Fontawesome.chevron_left,
                        color: AppConfig.theme.titleLargeColor,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "Search Anime",
                      style: AppConfig.theme.titleSmallTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: AppConfig.theme.scaffoldBackground,
              surfaceTintColor: Colors.transparent,
              shadowColor: Colors.black,
              elevation: 30,
              centerTitle: false,
              pinned: true,
              collapsedHeight: 110,
              automaticallyImplyLeading: false,
              floating: false,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                child: AnimeZoneHero(
                  tag: "anime-search-text-field",
                  child: AniListSearchBar(
                    hint: 'Search anime...',
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
              ),
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (_, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Index $index",
                        style: AppConfig.theme.titleSmallTextStyle,
                      ),
                    ),
                  );
                },
                itemCount: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
