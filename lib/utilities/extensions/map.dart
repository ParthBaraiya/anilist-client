import 'dart:convert';

extension MapExtension<K, V> on Map<K, V> {
  String get beautified => JsonEncoder.withIndent('    ').convert(this);
}
