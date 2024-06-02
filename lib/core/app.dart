import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/services/navigation_service/app_pages.dart';
import 'package:flutter/material.dart';

class AnilistClientApp extends StatefulWidget {
  const AnilistClientApp({super.key});

  @override
  State<AnilistClientApp> createState() => _AnilistClientAppState();
}

class _AnilistClientAppState extends State<AnilistClientApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(AppConfig.appContext).unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppConfig.navigation.onGenerateRoute,
        navigatorKey: AppConfig.navigation.navigator,
        title: "Anime Zone",
        initialRoute: AppPages.home,
      ),
    );
  }
}
