import 'package:anilist_client/core/app_config.dart';
import 'package:flutter/material.dart';

mixin ShowBottomSheetMixin<T> on Widget {
  BoxConstraints? get constraints => null;
  bool get isScrollControlled => false;

  Future<T?> show() {
    return showModalBottomSheet(
      useSafeArea: false,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      context: AppConfig.appContext,
      builder: (_) => this,
      constraints: constraints,
      isScrollControlled: isScrollControlled,
    );
  }
}
