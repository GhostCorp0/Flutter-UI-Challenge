import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/curve_image_side.dart';

class FurnitureDetailImages extends StatelessWidget {
  final String imageUrl;

  const FurnitureDetailImages({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: CurveImageSide(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: Image(
              fit: BoxFit.cover,
              height: size.height * 0.6,
              width: size.width,
              image: AssetImage(imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
