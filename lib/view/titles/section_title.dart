import 'package:anilist_client/core/app_config.dart';
import 'package:flutter/material.dart';

class AniWatchSectionTitle extends StatelessWidget {
  const AniWatchSectionTitle({
    super.key,
    this.onSeeMore,
    required this.title,
  });

  final VoidCallback? onSeeMore;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppConfig.theme.titleSmallTextStyle,
          ),
        ),
        if (onSeeMore != null)
          InkWell(
            onTap: onSeeMore,
            child: Icon(
              Icons.chevron_right_rounded,
              color: AppConfig.theme.titleSmallTextStyle.color,
              size: 30,
            ),
          ),
      ],
    );
  }
}
