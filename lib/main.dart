import 'package:anilist_client/core/app.dart';
import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/core/theme/anilist_theme_base.dart';
import 'package:anilist_client/repository/graphql_repository/mock_api_repository.dart';
import 'package:anilist_client/services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig.init(
    navigation: NavigationService(),
    repository: MockApiRepository.mockAllExcept(),
    theme: AniListTheme.dark,
  );

  runApp(const AnilistClientApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: AppConfig.theme.scaffoldBackground,
  ));
}
