import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  void pop<T>([T? result]) => Navigator.of(this).pop<T>(result);

  Future<T?> push<T extends Object?>({required String route, Object? args}) =>
      Navigator.of(this).pushNamed<T>(
        route,
        arguments: args,
      );

  Future<T?> replace<T extends Object?, TO extends Object?>(
          {required String route, TO? result, Object? args}) =>
      Navigator.of(this).pushReplacementNamed<T, TO>(
        route,
        result: result,
        arguments: args,
      );
}
