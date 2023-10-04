import 'dart:convert';
import 'dart:io';

import 'package:hysample/data/app_exceptions.dart';
import 'package:hysample/data/api/base_api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:hysample/resources/duration/app_duration.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      debugPrint("📡 getApi url : $url");
    }
    //
    dynamic responseJson;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: AppDuration.apiTimeOut));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw InternetException('exception : $url');
    } on RequestTimeOut {
      throw RequestTimeOut('timeout : $url');
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      debugPrint("📡 postApi data : $data , url : $url");
    }
    //
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: AppDuration.apiTimeOut));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw InternetException('exception : $url');
    } on RequestTimeOut {
      throw RequestTimeOut('timeout : $url');
    }

    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException;
      default:
        throw FetchDataException(
            '❗️ FetchDataException ${response.statusCode}');
    }
  }
}
