import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/flutter_car_app/colors.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Diagnostics", style: TextStyle(fontSize: 25)),
                Spacer(),
                Text(
                  "MODEL X",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: kCardGradient,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Text(
                            "Overall Health",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: buttonGradient,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.replay_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 650,
                          child: Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Center(
                                    child: Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: 300,
                                    height: 300,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  top:70,
                                  right:90,
                                  child: SizedBox(
                                    width: 75,
                                    height: 75,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  top: 80,
                                  right:99,
                                  child: SizedBox(
                                    width: 55,
                                    height: 55,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  top:70,
                                  left:90,
                                  child: SizedBox(
                                    width: 75,
                                    height: 75,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  top: 80,
                                  left:99,
                                  child: SizedBox(
                                    width: 55,
                                    height: 55,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  bottom:70,
                                  left:90,
                                  child: SizedBox(
                                    width: 75,
                                    height: 75,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  bottom: 80,
                                  left:99,
                                  child: SizedBox(
                                    width: 55,
                                    height: 55,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  bottom:70,
                                  right:90,
                                  child: SizedBox(
                                    width: 75,
                                    height: 75,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Positioned(
                                  bottom: 80,
                                  right:99,
                                  child: SizedBox(
                                    width: 55,
                                    height: 55,
                                    child: CustomRipple(),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    height: 650,
                                    child: Image.asset(
                                      'assets/images/bird_view_tesla.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Battery Health",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  LinearPercentIndicator(
                    animation: true,
                    percent: 0.8,
                    backgroundColor: progressBackgroundColor.withAlpha(127),
                    lineHeight: 20,
                    animationDuration: 2500,
                    center: Text("90.0%"),
                    barRadius: Radius.circular(10),
                    linearGradient: LinearGradient(
                      colors: [kPrimaryColor, kSecondaryColor],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Sensors",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Sensor(value: 0.8, label: "Motors"),
                    Sensor(value: 0.4, label: "Battery Temp"),
                    Sensor(value: 0.9, label: "Brakes"),
                    Sensor(value: 0.6, label: "Suspensions"),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Sensor extends StatelessWidget {
  const Sensor({super.key, required this.value, required this.label});

  final double value;
  final double height = 120.0;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Container(
                width: 50,
                height: height,
                color: progressBackgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height * value,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: buttonGradient.colors,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

class CustomRipple extends StatefulWidget {
  const CustomRipple({super.key});

  @override
  State<CustomRipple> createState() => _CustomRippleState();
}

class _CustomRippleState extends State<CustomRipple>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    animation = Tween<double>(begin: 0.6, end: 0.8).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: Container(
        width: 750,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor, width: 8),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
