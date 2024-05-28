import 'package:anilist_client/repository/graphql_repository/queries/graphql_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/repository_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiRepository extends ApiRepositoryBase {
  @override
  Future<void> getMediaById(MediaDetailsQuery query) async {
    final response = await _sendRequest(query);

    debugPrint("API Test: $response");

    throw 'Something went wrong!';
  }

  Future<String> _sendRequest(
    GraphqlQuery query, {
    InvalidResponseHandler? handleInvalidResponse,
  }) async {
    final response = await http.post(
      Uri.parse('https://graphql.anilist.co'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: '$query',
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response.body;
    } else {
      throw (handleInvalidResponse ?? InvalidResponseHandler())
          .getMessageForCode(response.statusCode);
    }
  }
}

class InvalidResponseHandler {
  final Map<int, String> _errMap;

  InvalidResponseHandler({
    String err500 =
        "Server returned invalid code. Please try again after some time",
    String err404 = "Data not found",
  }) : _errMap = {500: err500, 404: err404};

  String getMessageForCode(int code) {
    return _errMap[code] ?? 'Something went wrong.';
  }
}
