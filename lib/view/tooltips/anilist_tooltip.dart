import 'package:anilist_client/core/app_config.dart';
import 'package:flutter/material.dart';

class AniWatchTooltip extends StatelessWidget {
  const AniWatchTooltip({
    super.key,
    required this.child,
    this.message,
    this.richMessage,
  }) : assert(richMessage != null || message != null,
            "richMessage or message can not be null at the same time.");

  final Widget child;
  final InlineSpan? richMessage;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: child,
      richMessage: richMessage,
      textStyle: richMessage != null ? null : AppConfig.theme.bodyTextStyle,
      decoration: BoxDecoration(
        color: AppConfig.theme.dialogBackground,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(4, 6),
            spreadRadius: -5,
            blurRadius: 20,
          )
        ],
      ),
    );
  }
}
