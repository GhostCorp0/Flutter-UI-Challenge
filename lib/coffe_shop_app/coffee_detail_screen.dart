import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/colors.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/widgets/common_button.dart';
import 'package:iconsax/iconsax.dart';

import 'coffe_model.dart';

class CoffeeDetailScreen extends StatefulWidget {
  final Coffee coffee;
  final String heroTag;
  const CoffeeDetailScreen({super.key, required this.coffee, required this.heroTag});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  String selectedIndex = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: xbackgroundColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          SizedBox(height: 65),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
              ),
              Text(
                "Detail",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Iconsax.heart),
            ],
          ),
          SizedBox(height: 25),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Hero(
              tag: widget.heroTag,
              child: Image.asset(
                widget.coffee.image,
                width: double.infinity,
                height: 270,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.coffee.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                widget.coffee.type,
                style: TextStyle(fontSize: 12, color: xsecondaryColor),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/ic_star_filled.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "${widget.coffee.rate}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "(${widget.coffee.review})",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: xsecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children:
                        [
                          "assets/images/bike.png",
                          "assets/images/bean.png",
                          "assets/images/milk.png",
                        ].map((e) {
                          return Container(
                            margin: EdgeInsets.only(left: 12),
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.black12.withAlpha(20),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(e, height: 23),
                          );
                        }).toList(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 18),
          Divider(indent: 15, endIndent: 15, color: Colors.black12),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.coffee.description,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: xprimaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: ['S', '', 'M', '', 'L'].map((e) {
                  if (e == "") return SizedBox(width: 20);
                  bool isSelected = selectedIndex == e;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = e;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? xprimaryColor.withAlpha(25)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected ? xprimaryColor : Colors.black12,
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          e,
                          style: TextStyle(
                            fontSize: 14,
                            color: isSelected ? xprimaryColor : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(height: 25),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Price", style: TextStyle(color: xsecondaryColor)),
                  SizedBox(height: 5),
                  Text(
                    "\$${widget.coffee.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: xprimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 240,
              child: CommonButton(title:"Buy Now", onTap:(){

              }),
            )
          ],
        ),
      ),
    );
  }
}
