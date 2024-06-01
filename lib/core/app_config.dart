import 'package:anilist_client/services/navigation_service/navigation_service.dart';
import 'package:flutter/cupertino.dart';

class AppConfig {
  final NavigationService _navigation;

  AppConfig._({
    required NavigationService navigation,
  }) : _navigation = navigation;

  factory AppConfig.init({
    required NavigationService navigation,
  }) {
    _instance ??= AppConfig._(
      navigation: navigation,
    );

    return _instance!;
  }

  static AppConfig? _instance;

  static NavigationService get navigation => _instance!._navigation;
  static BuildContext get appContext =>
      _instance!._navigation.navigator.currentState!.context;
}
