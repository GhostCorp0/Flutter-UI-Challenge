import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/api_call_app/api/api_service.dart';

import '../model/post_model.dart';

class ApiCallApp extends StatefulWidget {
  const ApiCallApp({super.key});

  @override
  State<ApiCallApp> createState() => _ApiCallAppState();
}

class _ApiCallAppState extends State<ApiCallApp> {
  final ApiService apiService = ApiService();
  late Future<List<PostModel>> posts;

  @override
  void initState() {
    super.initState();
    posts = apiService.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          children: [
            SizedBox(height: 30),
            Column(
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff087253),
                      foregroundColor: Colors.white,
                    ),
                    child: Text("POST API"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: FutureBuilder<List<PostModel>>(
                  future: posts,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return const Center(child: Text('Error'));
                    } else {
                      final data = snapshot.data;
                      return ListView.builder(
                          itemCount: data?.length, itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(data![index].title),subtitle: Text(data[index].body),
                            );
                      });
                    }
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
