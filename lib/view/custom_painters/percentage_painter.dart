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
      painter: _PercentagePainter(percentage),
      child: child,
    );
  }
}

class _PercentagePainter extends CustomPainter {
  /// Must be between 0 to 100.
  final int percentage;

  _PercentagePainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * percentage / 50,
      false,
      Paint()
        ..color = MediaSatisfaction.fromInt(percentage).color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 8,
    );
  }

  @override
  bool shouldRepaint(covariant _PercentagePainter oldDelegate) =>
      oldDelegate.percentage != percentage;
}
