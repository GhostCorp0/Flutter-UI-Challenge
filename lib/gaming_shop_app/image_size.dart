import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/gaming_colors.dart';

class ImageSize extends StatelessWidget {
  const ImageSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kSelectCardBackgroundColor, width: 1.5),
            ),
            child: Image.asset("assets/images/detail1.png"),
          ),
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
             ),
            child: Image.asset("assets/images/detail2.png"),
          ),
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/detail3.png"),
          ),
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/detail4.png"),
          )
        ],
      ),
    );
  }
}
