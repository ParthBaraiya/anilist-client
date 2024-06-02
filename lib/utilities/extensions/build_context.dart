import 'package:flutter/cupertino.dart';

extension BuildContextExtension on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);
}
