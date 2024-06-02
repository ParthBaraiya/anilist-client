import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/services/navigation_service/app_pages.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/values/resources/images.dart';
import 'package:anilist_client/view/anime_zone_hero.dart';
import 'package:anilist_client/view/form_fields/ani_list_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.theme.scaffoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.luffySticker,
              height: context.screenSize.height * 0.3,
            ),
            SizedBox(height: 40),
            Text(
              "Anime Zone",
              style: AppConfig.theme.titleMediumTextStyle,
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: GestureDetector(
                onTap: () => context.push(route: AppPages.search),
                child: AnimeZoneHero(
                  tag: "anime-search-text-field",
                  child: AbsorbPointer(
                    child: AniListSearchBar(
                      hint: 'Search anime...',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
