import 'package:anilist_client/core/app_config.dart';
import 'package:flutter/material.dart';

class AniWatchDefaultScaffold extends StatelessWidget {
  const AniWatchDefaultScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.theme.scaffoldBackground,
      body: child,
    );
  }
}
