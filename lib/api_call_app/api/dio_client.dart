import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient.internal();
  late Dio dio;

  factory DioClient() {
    return _instance;
  }

  DioClient.internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://jsonplaceholder.typicode.com",
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type' : 'application/json'
        }
      )
    );

    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true
    ));
  }
}