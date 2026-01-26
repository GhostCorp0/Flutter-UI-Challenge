import 'package:dio/dio.dart';
import 'package:flutter_ui_challenge/dio_app/network_manager/injection_container.dart';

class DioHelper {
  Dio dio = getDio();

  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: 'application/js on',
    sendTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
  );

  Map<String, dynamic> headers = {"isAuthRequired": "Bearer Token"};

  //GET API
  Future<dynamic> get({
    required String url,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }

    try {
      Response response = await dio.get(url, options: options);
      return response.data;
    } catch (e) {
      return null;
    }
  }

  //POST API
  Future<dynamic> post({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }

    try {
      Response response;
      if (requestBody == null) {
        response = await dio.post(url, options: options);
      } else {
        response = await dio.post(url, data: requestBody, options: options);
      }
      return response.data;
    } catch (e) {
      return null;
    }
  }
}
