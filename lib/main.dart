import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/car_rental_app/rental_page.dart';
import 'package:flutter_ui_challenge/package_tracking_app/package_tracking_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PackageTrackingApp(),
    );
  }
}