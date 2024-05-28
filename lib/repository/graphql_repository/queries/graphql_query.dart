import 'dart:convert';

abstract class GraphqlQuery {
  const GraphqlQuery();

  String get query;

  Map<String, dynamic> get variables;

  @override
  String toString() => json.encode({
        "query": 'query (${_defineVariable(variables)}) { $query }',
        "variables": variables,
      });

  String _defineVariable(Map<String, dynamic> map) {
    return map.entries
        .map((e) => '\$${e.key}: ${graphQlRunTimeType(e.value)}')
        .join(",");
  }
}

String graphQlRunTimeType(dynamic value) {
  switch (value.runtimeType) {
    case const (int):
      return 'Int';
    case const (String):
      return "String";
    case const (bool):
      return "Boolean";
    default:
      throw "Undefined type exception";
  }
}
