

import 'package:dio/dio.dart';
import 'package:flutter_ui_challenge/api_call_app/api/dio_client.dart';
import 'package:flutter_ui_challenge/api_call_app/model/post_model.dart';

class ApiService {
  final Dio _dio = DioClient().dio;

  //GET API

  Future<List<PostModel>> getPosts() async {
    try{
      final Response response = await _dio.get('/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    }catch (e) {
      throw Exception("Failed to fetch posts");
    }
  }
}