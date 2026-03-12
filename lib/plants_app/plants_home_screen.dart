import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/plants_app/plant_all_detail_screen.dart';
import 'package:flutter_ui_challenge/plants_app/plant_colors.dart';
import 'package:flutter_ui_challenge/plants_app/plants_detail.dart';
import 'package:flutter_ui_challenge/plants_app/plants_product.dart';

class PlantsHomeScreen extends StatelessWidget {
  const PlantsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(children: [sideBar(), bodyParts(size,context)]),
          Positioned(
            top: 135,
            left: 29,
            child: Text(
              "Plants",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Positioned(
            top: 45,
            right: 10,
            child: Icon(Icons.search, color: Colors.black, size: 35),
          ),
        ],
      ),
    );
  }

  Container bodyParts(Size size,BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context) => PlantAllDetailScreen()));
              },
              child: PlantsProduct(
                name: "House Shape Close",
                price: "45",
                image: "assets/images/flower1.png",
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context) => PlantAllDetailScreen2()));
              },
              child: PlantsProduct(
                name: "Glass Water",
                price: "60",
                image: "assets/images/flower2.png",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 38),
              child: Image.asset("assets/images/more_icon.png", width: 60),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Green", style: TextStyle(fontSize: 15)),
            ),
            SizedBox(height: 210),
            Padding(
              padding: EdgeInsets.only(right: 14),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "Shape Class",
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Indoor Plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Green Plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16, top: 70),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: primaryColor,
                ),
                width: 60,
                height: 70,
                child: Icon(Icons.home, color: Colors.white, size: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
