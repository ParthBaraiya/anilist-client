import 'package:flutter/material.dart';

extension ColorExtension on Color {
  /// We could've use [ThemeData.estimateBrightnessForColor] but, we need to
  /// to modify it to set the threshold.
  Brightness get brightness {
    final double relativeLuminance = computeLuminance();
    const double kThreshold = 0.85;
    if ((relativeLuminance + 0.05) * (relativeLuminance + 0.05) > kThreshold) {
      return Brightness.light;
    }
    return Brightness.dark;
  }

  Color get transparent => withOpacity(0);
}
