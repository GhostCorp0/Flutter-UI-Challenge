import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/car_rental_app/rental_page.dart';
import 'package:flutter_ui_challenge/digital_alarm_clock/alarm_clock_home.dart';
import 'package:flutter_ui_challenge/digital_alarm_clock/widgets/custom_time_picker.dart';
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
        fontFamily: "Digital",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:AlarmClockHome(),
    );
  }
}