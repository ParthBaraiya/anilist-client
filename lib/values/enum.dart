import 'package:flutter/material.dart';

enum MediaSatisfaction with EnumMixin {
  veryDissatisfied(
    Icons.sentiment_very_dissatisfied,
    Color(0xffff0000),
    "Very Dissatisfied",
  ),
  dissatisfied(
    Icons.sentiment_dissatisfied,
    Color(0xffe06533),
    "Dissatisfied",
  ),
  neutral(
    Icons.sentiment_neutral,
    Color(0xffffe300),
    "Neutral",
  ),
  satisfied(
    Icons.sentiment_satisfied,
    Color(0xff96b413),
    "Satisfied",
  ),
  verySatisfied(
    Icons.sentiment_very_satisfied,
    Color(0xff00ff00),
    "Very Satisfied",
  );

  final IconData icon;
  final Color color;
  final String tooltip;

  const MediaSatisfaction(
    this.icon,
    this.color,
    this.tooltip,
  );

  // Score must be between 0 to 100.
  factory MediaSatisfaction.fromInt(int score) {
    if (score <= 10) return MediaSatisfaction.veryDissatisfied;
    if (score <= 30) return MediaSatisfaction.dissatisfied;
    if (score <= 50) return MediaSatisfaction.neutral;
    if (score <= 80) return MediaSatisfaction.satisfied;
    return MediaSatisfaction.verySatisfied;
  }
}

mixin EnumMixin on Enum {
  @override
  String toString() => super.toString().split('.').last.toUpperCase();
}
