//Api headers,get,post,delete,put functions

import 'dart:developer';

import 'package:http/http.dart';
import 'package:project_20/services/api_base.dart';

class API {
  Map<String, String> headers() {
    Map<String, String> headers = {};
    headers['X-RapidAPI-Key'] = 'ae809394dbmsh9cd6aa367e64f26p13ba00jsn0b9c61045ce8';
    headers["X-RapidAPI-Host"] = "api-football-v1.p.rapidapi.com";
    return headers;
  }

  Future<Response> GET({
    required String path,
     Map<String, dynamic>? params,
  }) async {
    var url = Uri.http(Api.base, path, params);
    // Uri? newUrl;
    // if (params != null) {
    //   newUrl = url.replace(queryParameters: params);
    // } else {
    //   newUrl = url;
    // }
    final response = await get(
      url,
      headers: headers(),
    );
    log(headers().toString());
    return response;
  }

  // Future<Response> POST({
  //   required String path,
  //   String? body,
  // }) async {
  //   var url = Uri.http(Api.base, path);
  //   final response = await post(
  //     url,
  //     headers: headers(),
  //     body: body,
  //   );
  //   return response;
  // }
  //
  // Future<Response> PUT({
  //   required String path,
  //   String? body,
  // }) async {
  //   var url = Uri.http(Api.base, path);
  //   final response = await put(
  //     url,
  //     headers: headers(),
  //     body: body,
  //   );
  //   return response;
  // }
  //
  // Future<Response> DELETE({
  //   required String path,
  //   String? body,
  // }) async {
  //   var url = Uri.http(Api.base, path);
  //   final response = await delete(
  //     url,
  //     headers: headers(),
  //     body: body,
  //   );
  //   return response;
  // }
}