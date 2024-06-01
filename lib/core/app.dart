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
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppConfig.navigation.onGenerateRoute,
      navigatorKey: AppConfig.navigation.navigator,
      title: "Anilist Client",
      initialRoute: AppPages.home,
    );
  }
}
