import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/dio_app/models/ResponseInMapModel.dart';

import '../network_manager/repository.dart';

class DioSampleApp extends StatefulWidget {
  const DioSampleApp({super.key});

  @override
  State<DioSampleApp> createState() => _DioSampleAppState();
}

class _DioSampleAppState extends State<DioSampleApp> {
  List<ResponseInMapModel> responseInMapModel = [];

  getData(){
    Repository().getResponseInMap().then((val){
      responseInMapModel = val;
    }).onError((error,stacktrace){
       print("Error => ${error.toString()}",);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: responseInMapModel.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(responseInMapModel[index].title??""),
              subtitle: Text(responseInMapModel[index].body??""),
            );
          },
        ),
      ),
    );
  }
}
