import 'dart:convert';

import 'package:anilist_client/repository/graphql_repository/queries/anime_brief_list_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/graphql_query.dart';
import 'package:anilist_client/repository/graphql_repository/queries/media_details_query.dart';
import 'package:anilist_client/repository/graphql_repository/repository_base.dart';
import 'package:anilist_client/repository/graphql_repository/responses/search_anime_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiRepository extends ApiRepositoryBase {
  @override
  Future<void> getMediaById(MediaDetailsQuery query) async {
    final response = await _sendRequest(query);

    debugPrint("API Test: $response");

    throw "Not implemented yet!";
  }

  @override
  Future<SearchAnimeResponse> listMedia(AnimeBriefListQuery query) async {
    final response = await _sendRequest(query);
    final json = jsonDecode(response)['data']?['Page'];

    if (json == null) {
      throw 'Error parsing anime list please try to update '
          'the app to the latest version.';
    }

    return SearchAnimeResponse.fromJson(json);
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

  final _errors = {
    // Success responses
    200: "Success: Request has been received and acted upon.",
    201: "Created: Request has been received and the entity is created.",
    202: "Accepted: Request has been received but not yet completed",
    203:
        "Success: Request is success but the data received is not authorized i.e. we can not trust that data.",
    204: "No Content",
    205:
        "Reset content: Tells to reset the content of the page which sent this request",
    206: "The content is not complete. Usually has range header with response.",
    207: "Defines multiple status of the request.",
    208: "",
    226: "",

    // Redirection
    300: "There are multiple responses. choose one of them",
    301: "The URL is moved. User different URL.",
    302: "The URL is moved temporarily.",
    303: "Get the response from another resource",
    304:
        "Not modified: Tells client that response is not changed from cached version. So, we can use the older version.",
    307: "",
    308: "",

    // Client Error
    400: "Invalid request",
    401:
        "Unauthenticated request. Client must authenticate itself before sending the data.",
    403: "Forbidden. The content client is trying to access is not accessible by the client. "
        "In 401 server is unable to identify the client. But in 403, client is authorized but not has necessary rights to access the contents",
    404: "",
    405: "",
    406: "",
    407: "",
    408: "",
    409: "",
    410: "",
    411: "",
    412: "",
    413: "",
    414: "",
    415: "",
    416: "",
    417: "",
    418: "",
    421: "",
    422: "",
    423: "",
    424: "",
    425: "",
    426: "",
    428: "",
    429: "",
    431: "",
    451: "",

    // Server Error
    500: "",
    501: "",
    502: "",
    503: "",
    504: "",
    505: "",
    506: "",
    507: "",
    508: "",
    510: "",
    511: "",
  };
}
