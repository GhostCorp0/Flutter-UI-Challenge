import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/gaming_colors.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color:kSecondTextColor,size:16),
        Icon(Icons.star,color:kSecondaryColor,size:16),
        Icon(Icons.star,color:kSecondaryColor,size:16),
        Icon(Icons.star,color:kSecondaryColor,size:16),
        Icon(Icons.star,color:Colors.black54,size:16),
      ],
    );
  }
}
