import 'package:anilist_client/core/theme/anilist_theme_base.dart';
import 'package:anilist_client/repository/graphql_repository/repository.dart';
import 'package:anilist_client/services/navigation_service/navigation_service.dart';
import 'package:flutter/cupertino.dart';

class AppConfig {
  final NavigationService _navigation;
  final ApiRepository _repository;
  final AniListTheme _theme;

  AppConfig._({
    required ApiRepository repository,
    required NavigationService navigation,
    required AniListTheme theme,
  })  : _navigation = navigation,
        _repository = repository,
        _theme = theme;

  factory AppConfig.init({
    required ApiRepository repository,
    required NavigationService navigation,
    required AniListTheme theme,
  }) {
    _instance ??= AppConfig._(
      navigation: navigation,
      repository: repository,
      theme: theme,
    );

    return _instance!;
  }

  static AppConfig? _instance;

  static NavigationService get navigation => _instance!._navigation;
  static BuildContext get appContext =>
      _instance!._navigation.navigator.currentState!.context;

  static ApiRepository get repository => _instance!._repository;
  static AniListTheme get theme => _instance!._theme;
}
