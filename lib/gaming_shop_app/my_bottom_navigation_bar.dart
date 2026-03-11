import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_challenge/flutter_car_app/colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 28),
        decoration: BoxDecoration(
          color: const Color.fromARGB(17,0,0, 0),
          borderRadius: BorderRadius.circular(36),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width:30,
                  height: 3,
                  color: kSecondaryColor,
                ), 
                const Spacer(),
                SvgPicture.asset("assets/images/icon_home.svg"),
                const Spacer()
              ],
            ),
            Column(
              children: [
                const Spacer(),
                SvgPicture.asset("assets/images/icon_heart.svg"),
                const Spacer()
              ],
            ),
            Column(
              children: [
                const Spacer(),
                SvgPicture.asset("assets/images/icon_cart.svg"),
                const Spacer()
              ],
            ),
            Column(
              children: [
                const Spacer(),
                SvgPicture.asset("assets/images/icon_user.svg"),
                const Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
