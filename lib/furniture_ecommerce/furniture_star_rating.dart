import 'dart:math';

import 'package:flutter/material.dart';

class FurnitureStarRating extends StatefulWidget {
  final int rating;
  const FurnitureStarRating({super.key,required this.rating});

  @override
  State<FurnitureStarRating> createState() => _FurnitureStarRatingState();
}

class _FurnitureStarRatingState extends State<FurnitureStarRating> {
  Widget star(bool fill) {
    return Icon(
      Icons.star,
      size: 20,
      color: fill? Colors.deepOrange:Colors.black45,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5,(index){
        if(index < (widget.rating).round()) {
          return star(true);
        }else {
          return star(false);
        }
      })
    );
  }
}
