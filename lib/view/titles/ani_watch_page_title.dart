import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:flutter/material.dart';

class AniWatchPageTitle extends StatelessWidget {
  const AniWatchPageTitle({
    super.key,
    this.action,
    required this.title,
    this.showBack = true,
    this.leading,
  });

  final bool showBack;
  final Widget? leading;
  final Widget? action;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBack)
          InkWell(
            onTap: () => context.pop(),
            borderRadius: BorderRadius.circular(200),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.chevron_left_rounded,
                color: AppConfig.theme.titleSmallTextStyle.color,
                size: 30,
              ),
            ),
          )
        else if (leading != null)
          leading!,
        Expanded(
          child: Text(
            title,
            style: AppConfig.theme.titleMediumTextStyle,
          ),
        ),
        if (action != null) action!,
      ],
    );
  }
}
