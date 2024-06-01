import 'package:flutter/material.dart';

class AniListThemeBase {
  // Background Colors
  final Color scaffoldBackground;
  final Color dialogBackground;
  final Color textFieldBackground;

  // Text colors.
  final Color textFieldTextColor;
  final Color textFieldFocusedTextColor;
  final Color titleLargeColor;
  final Color titleMediumColor;
  final Color titleSmallColor;
  final Color bodyTextColor;
  final Color captionTextColor;
  final Color buttonTextColor;

  const AniListThemeBase({
    required this.scaffoldBackground,
    required this.dialogBackground,
    required this.textFieldBackground,
    required this.textFieldTextColor,
    required this.textFieldFocusedTextColor,
    required this.titleLargeColor,
    required this.titleMediumColor,
    required this.titleSmallColor,
    required this.bodyTextColor,
    required this.captionTextColor,
    required this.buttonTextColor,
  });

  TextStyle get buttonTextStyle => TextStyle(
        color: buttonTextColor,
      );

  TextStyle get titleLargeTextStyle => TextStyle(
        color: titleLargeColor,
      );

  TextStyle get titleMediumTextStyle => TextStyle(
        color: titleMediumColor,
      );

  TextStyle get bodyTextStyle => TextStyle(
        color: bodyTextColor,
      );
  TextStyle get captionTextStyle => TextStyle(
        color: captionTextColor,
      );

  TextStyle get titleSmallTextStyle => TextStyle(
        color: titleSmallColor,
      );

  TextStyle get textFieldTextStyle => TextStyle(
        color: textFieldTextColor,
      );

  TextStyle get textFieldFocusedTextStyle => TextStyle(
        color: textFieldFocusedTextColor,
      );
}
