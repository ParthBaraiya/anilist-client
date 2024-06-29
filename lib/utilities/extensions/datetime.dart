import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String format(String pattern) => DateFormat(pattern).format(this);
}
