import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  void pop<T>([T? result]) => Navigator.of(this).pop<T>(result);
}
