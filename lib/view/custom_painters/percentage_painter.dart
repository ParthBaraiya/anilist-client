import 'dart:math' as math;

import 'package:anilist_client/values/enum.dart';
import 'package:flutter/material.dart';

class PercentagePainter extends StatelessWidget {
  const PercentagePainter({
    super.key,
    required this.child,
    required this.percentage,
  });

  final Widget child;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _PercentagePainter(
        percentage: percentage,
      ),
      child: child,
    );
  }
}

class _PercentagePainter extends CustomPainter {
  /// Must be between 0 to 100.
  final int percentage;
  final double strokeWidth;

  _PercentagePainter({
    required this.percentage,
    this.strokeWidth = 8.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final s = (size - Offset(strokeWidth, strokeWidth)) as Size;
    final rect = (Offset.zero & s).translate(strokeWidth / 2, strokeWidth / 2);

    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * percentage / 50,
      false,
      Paint()
        ..color = MediaSatisfaction.fromInt(percentage).color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth,
    );
  }

  @override
  bool shouldRepaint(covariant _PercentagePainter oldDelegate) =>
      oldDelegate.percentage != percentage;
}
