import 'package:anilist_client/core/app_config.dart';
import 'package:flutter/material.dart';

class AniWatchDivider extends Divider {
  AniWatchDivider({
    super.key,
    super.height,
    super.thickness,
    super.indent,
    super.endIndent,
  }) : super(
          color: AppConfig.theme.dialogSecondaryBackground,
        );
}
