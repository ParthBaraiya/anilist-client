import 'package:flutter/material.dart';

abstract class AniListFontFamily {
  static const comfortaa = 'Comfortaa';
  static const raleway = 'Raleway';
}

class AniListTheme {
  static final dark = AniListTheme(
    scaffoldBackground: Color(0xFF191825),
    dialogBackground: Color(0xFF2C2846),
    textFieldBackground: Color(0xFF191825),
    dialogSecondaryBackground: Color(0xff523b8c),
    textFieldTextColor: Color(0xEEEAFFFF),
    textFieldFocusedTextColor: Color(0xEEEAFFFF),
    titleLargeColor: Color(0xEEEAFFFF),
    titleMediumColor: Color(0xEEEAFFFF),
    titleSmallColor: Color(0xEEEAFFFF),
    bodyTextColor: Color(0xEEEAFFFF),
    bodyTextColorDark: Color(0xFFD0D0D0),
    captionTextColor: Color(0xEEEAFFFF),
    buttonTextColor: Color(0xEEEAFFFF),
  );

  // Background Colors
  final Color scaffoldBackground;
  final Color dialogBackground;
  final Color dialogSecondaryBackground;
  final Color textFieldBackground;

  // Text colors.
  final Color textFieldTextColor;
  final Color textFieldFocusedTextColor;
  final Color titleLargeColor;
  final Color titleMediumColor;
  final Color titleSmallColor;
  final Color bodyTextColor;
  final Color bodyTextColorDark;
  final Color captionTextColor;
  final Color buttonTextColor;

  const AniListTheme({
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
    required this.dialogSecondaryBackground,
    required this.bodyTextColorDark,
  });

  TextStyle get buttonTextStyle => TextStyle(
        color: buttonTextColor,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get bodyLargeTextStyle => TextStyle(
        color: bodyTextColor,
        fontSize: 16,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get bodyTextStyle => TextStyle(
        color: bodyTextColor,
        fontSize: 14,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get captionTextStyle => TextStyle(
        color: captionTextColor,
        fontSize: 12,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get titleSmallTextStyle => TextStyle(
        color: titleSmallColor,
        fontSize: 24,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get titleMediumTextStyle => TextStyle(
        color: titleLargeColor,
        fontSize: 28,
        letterSpacing: 1.3,
        fontWeight: FontWeight.w600,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get titleLargeTextStyle => TextStyle(
        color: titleMediumColor,
        fontSize: 36,
        letterSpacing: 1.3,
        fontWeight: FontWeight.w600,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get textFieldTextStyle => TextStyle(
        color: textFieldTextColor,
        fontSize: 18,
        fontFamily: AniListFontFamily.comfortaa,
      );

  TextStyle get textFieldFocusedTextStyle => TextStyle(
        color: textFieldFocusedTextColor,
        fontSize: 18,
        fontFamily: AniListFontFamily.comfortaa,
      );
}
