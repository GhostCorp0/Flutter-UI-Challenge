import 'package:flutter_ui_challenge/dio_app/models/ResponseInMapModel.dart';
import 'package:flutter_ui_challenge/dio_app/network_manager/dio_helper.dart';

class Repository {
  static final DioHelper _dioHelper = DioHelper();

  Future<List<ResponseInMapModel>> getResponseInMap() async {
    var response = await _dioHelper.get(url: 'https://jsonplaceholder.typicode.com/posts');
    return (response as List).map((json) => ResponseInMapModel.fromJson (json)).toList();
  }

  Future<dynamic> postApi(Object reqModel) async {
    var response = await _dioHelper.post(url: 'https://reqres.in/api/register',requestBody: reqModel);
    return response;
  }
}
