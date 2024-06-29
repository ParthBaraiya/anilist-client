import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringsExtension on String {
  Color get toColor {
    var str = replaceAll("#", "").toLowerCase();
    if (str.length == 6) {
      str = "ff$str";
    }

    final code = int.tryParse(str, radix: 16) ?? 0;

    return Color(code);
  }

  String get capitalized => toBeginningOfSentenceCase(this);
}
