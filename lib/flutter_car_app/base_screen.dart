import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/flutter_car_app/colors.dart';
import 'package:flutter_ui_challenge/flutter_car_app/home_screen.dart';
import 'package:flutter_ui_challenge/flutter_car_app/settings_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  navigateTo(int index) {
    _selectedIndex = index;
  }

  Widget _bottomAppBarIcon({required int index, required IconData icon}) {
    return IconButton(
      onPressed: () {
        setState(() {
          navigateTo(index);
        });
      },
      icon: Icon(
        icon,
        color: _selectedIndex == index ? kPrimaryColor : null,
        size: 35,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: kBottomAppBarColor,
        elevation: 0,
        child: SafeArea(
          child: Container(
            height: 70,
            color: kBottomAppBarColor,
            child: Material(
              type: MaterialType.transparency,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _bottomAppBarIcon(icon: Icons.home_rounded, index: 0),
                  _bottomAppBarIcon(icon: Icons.bar_chart_rounded, index: 1),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: buttonGradient,
                            ),
                            child: IconButton(
                              iconSize: 50,
                              onPressed: () {},
                              icon: Icon(
                                Icons.power_settings_new_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _bottomAppBarIcon(icon: Icons.settings, index: 2),
                  _bottomAppBarIcon(
                    icon: Icons.account_circle_rounded,
                    index: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:backGroundGradient
        ),
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            HomeScreen(),
            Container(child: Center(child: Text("Page 02",style: TextStyle(color: Colors.blue),))),
            SettingsScreen(),
            Container(child: Center(child: Text("Page 04",style: TextStyle(color: Colors.blue),))),
          ],
        ),
      ),
    );
  }
}
