import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/flutter_car_app/colors.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/gaming_colors.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/image_size.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/product.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/rating.dart';

class GamingDetailScreen extends StatelessWidget {
  final Product game;

  const GamingDetailScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 280,
            child: Stack(
              children: [
                Container(height: 200, color: kSelectCardBackgroundColor),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(game.imagePic, height: 220, width: 330),
                  ),
                ),
              ],
            ),
          ),
          ImageSize(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16,horizontal:32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: kPrimaryTextColor,
                  ),
                ),
                SizedBox(height: 10),
                Rating(),
                SizedBox(height:10),
                Text(
                  "Unleash your color with the arrival of four new styles.Each wireless controller comes loaded with the same DUALSHOCK@4 features including touchpad,motion sensors and built-in rechargeable battery.",
                  style: TextStyle(fontSize: 16, color: kSecondTextColor),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical:25),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${game.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: kPrimaryTextColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical:15,
                          horizontal:18 ,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondTextColor,
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: kSelectCardBackgroundColor,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.favorite_border, color: Colors.white, size: 30),
        ),
      ],
    );
  }
}
