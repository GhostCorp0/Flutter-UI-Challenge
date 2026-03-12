import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/rating.dart';
import 'package:flutter_ui_challenge/icecream_app/icecream_colors.dart';
import 'package:flutter_ui_challenge/icecream_app/icecream_model.dart';
import 'package:flutter_ui_challenge/icecream_app/icecream_rating.dart';

class IcecreamDetail extends StatefulWidget {
  final IceCream iceCream;

  const IcecreamDetail({super.key, required this.iceCream});

  @override
  State<IcecreamDetail> createState() => _IcecreamDetailState();
}

class _IcecreamDetailState extends State<IcecreamDetail> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.63),
                  Text(
                    widget.iceCream.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Row(
                    children: [
                      IcecreamRating(),
                      SizedBox(width: 5),
                      Text("${widget.iceCream.star}.0"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "\$${widget.iceCream.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(height: 40, width: 1, color: Colors.black45),
                      SizedBox(width: 40),
                      Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 30,
                        width: 130,
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                   if(quantity > 1){
                                     quantity --;
                                   }
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            SizedBox(width: 20),
                            Text(
                              quantity.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap:(){
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(Icons.add, color: cardColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20),
                  Text(
                    "Cold and Creamy icecream filled with crunchy oreo, so thick and chocolaty that will make your day.",
                    style: TextStyle(
                      fontSize:16,
                      color: Colors.black54
                    ),
                  ),
                  SizedBox(height:30 ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width:1,
                                color: Colors.black54
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      SizedBox(width:30),
                      Expanded(child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: secondaryColor,
                        ),
                        child: Center(
                          child: Text("Order Now",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:18
                          )),
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: size.height * 0.6,
              width: size.width,
              decoration: BoxDecoration(
                color: widget.iceCream.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/ice_icon.png", width: 25),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      widget.iceCream.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      widget.iceCream.image,
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
