import 'package:anilist_client/core/theme/anilist_theme_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

extension AniListThemeExtension on AniListTheme {
  Style get htmlStyle => Style();

  Map<String, Style> get generateHtmlStyleSheet {
    final style = <String, Style>{};

    style.addAll({
      '*': Style(
        padding: HtmlPaddings.zero,
        margin: Margins.zero,
      ),
      'div': bodyTextStyle.generateHtmlStyle,
    });

    return style;
  }
}

extension TextStyleExtension on TextStyle {
  Style get generateHtmlStyle => Style(
        color: color,
        fontSize: FontSize(fontSize ?? 12),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        fontFeatureSettings: fontFeatures,
        lineHeight: LineHeight(height),
        textAlign: TextAlign.justify,
        textDecoration: decoration,
        textDecorationColor: decorationColor,
        textDecorationThickness: decorationThickness,
        textDecorationStyle: decorationStyle,
      );
}
