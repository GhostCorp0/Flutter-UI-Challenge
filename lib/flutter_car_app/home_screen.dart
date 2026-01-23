import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenge/flutter_car_app/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                type: MaterialType.transparency,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu_rounded, color: kPrimaryColor),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          splashRadius: 25,
                          icon: FittedBox(
                            child: Icon(Icons.account_circle_rounded, size: 40),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Your Tesla",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom:10),
                child: Text(
                  "MODEL X",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
                ),
              ),
              Image.asset("assets/images/homepage_tesla.png"),
              CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 18.0,
                percent: 0.8,
                animation: true,
                center: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "80%",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Charged",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: kPrimaryColor,
                backgroundColor: progressBackgroundColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/lighting.svg"),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text("Charging.. 14 mins remaining"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: kCardColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: SizedBox(
                          width:120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Temperature",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Cabin"),
                              SizedBox(height: 10,),
                              Center(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "21",
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: Offset(0, -12),
                                          child: Text(
                                            'C',
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: kPrimaryColor,
                                            ),
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
                      ),
                    ),
                    SizedBox(width: 20,),
                    Card(
                      color: kCardColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: SizedBox(
                          width:120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Consumption",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Today"),
                              SizedBox(height: 10,),
                              Center(
                                child: Text(
                                   "4.3",
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
