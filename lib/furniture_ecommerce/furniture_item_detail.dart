import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/data_model.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/furniture_star_rating.dart';

class FurnitureItemDetail extends StatelessWidget {
  final ProductModel product;

  const FurnitureItemDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.52,
      child: SizedBox(
        width: size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        product.manufacturer,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                      fontSize: 18,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    '${product.rating}.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(width: 5),
                  FurnitureStarRating(rating: product.rating),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "fabric color",
                        style: TextStyle(fontSize: 17, color: Colors.black38),
                      ),
                      Text(
                        product.fabricColor,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "style",
                        style: TextStyle(fontSize: 17, color: Colors.black38),
                      ),
                      Text(
                        product.style,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "made in",
                        style: TextStyle(fontSize: 17, color: Colors.black38),
                      ),
                      Text(
                        product.madeIn,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                product.description,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.64,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:Center(
                      child: Text(
                        "Pay",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.18,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child:Center(
                      child: Icon(Icons.favorite_border_rounded,size:30,
                      color:Colors.black38),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
