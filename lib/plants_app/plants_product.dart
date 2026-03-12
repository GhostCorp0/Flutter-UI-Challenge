import 'package:flutter/material.dart';

class PlantsProduct extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const PlantsProduct({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset(image, width: 300)),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 55, right: 20),
          child: Text(
            "More detail about product, that customer wants to know",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 54, right: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${price}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Hero(tag:name,child: Image.asset("assets/images/basket_icon.png",height:60,width:60,))
            ],
          ),
        ),
      ],
    );
  }
}
