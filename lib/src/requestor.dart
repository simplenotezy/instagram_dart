import 'dart:async';
import 'package:http/src/request.dart' as http;
import 'package:instagram/src/models/api/instagram_response.dart';

abstract class Requestor {
  Uri buildUri(String path, {Map<String, String> queryParameters, String method});

  Map<String, String> buildBody(Map<String, String> body);

  Future<InstagramResponse> request(String path, {Map<String, String>? body, Map<String, String>? queryParameters, String method = 'GET'}) {
    var uri = buildUri(path, queryParameters: queryParameters ?? {}, method: method);
    var rq = new http.Request(method, uri);
    rq.headers['accept'] = 'application/json';

    if (body?.isNotEmpty == true) {
      // rq.headers['content-type'] = 'application/json';
      rq.bodyFields = buildBody(body!);
    }

    return send(rq);
  }

  Future<InstagramResponse> send(http.Request request);
}
