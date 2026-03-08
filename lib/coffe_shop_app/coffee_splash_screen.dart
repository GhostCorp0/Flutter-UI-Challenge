import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/coffee_app_main_screen.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/widgets/common_button.dart';

class CoffeeSplashScreen extends StatelessWidget {
  const CoffeeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/bg.png",
                height: size.height / 1.3,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 45,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Fall in love with Coffee in Blissful Delight!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    CommonButton(
                      title: "Get Started",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CoffeeAppMainScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
