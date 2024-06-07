import 'package:flutter/cupertino.dart';

logMessage(ValueGetter<String> message) {
  assert(() {
    try {
      print(message());
    } catch (e) {
      // Suppress exceptions...
    }

    return true;
  }(), '');
}
