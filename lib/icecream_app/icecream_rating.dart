import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/icecream_app/icecream_colors.dart';

class IcecreamRating extends StatelessWidget {
  const IcecreamRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: secondaryColor,size:16),
        Icon(Icons.star,color: secondaryColor,size:16),
        Icon(Icons.star,color: secondaryColor,size:16),
        Icon(Icons.star,color: secondaryColor,size:16),
        Icon(Icons.star,color:Colors.black54,size:16),
      ],
    );
  }
}
