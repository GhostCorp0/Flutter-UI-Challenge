import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/stojo_app/stojo_home_screen.dart';

class StozoSplashScreen extends StatefulWidget {
  const StozoSplashScreen({super.key});

  @override
  State<StozoSplashScreen> createState() => _StozoSplashScreenState();
}

class _StozoSplashScreenState extends State<StozoSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              StojoHomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(scale: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Stojo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            SizedBox(height: 30),
            Center(child: Image.asset("assets/images/stozo_1.png", width: 350)),
          ],
        ),
      ),
    );
  }
}
