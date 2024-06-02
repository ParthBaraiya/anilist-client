import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/values/resources/fontawesome_icons.dart';
import 'package:anilist_client/values/resources/images.dart';
import 'package:anilist_client/view/form_fields/ani_list_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

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
              child: AniListTextField(
                hintText: "Search anime...",
                leading: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Fontawesome.search,
                      color: AppConfig.theme.textFieldTextColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
