import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/category_selection.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/furniture_items.dart';

class FurnitureEcomHomeScreen extends StatelessWidget {
  const FurnitureEcomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            myAppBar(),
            // For Search Bar
            mySearchBar(),
            //For a list of category
            CategorySelection(),
            //for display product items
            FurnitureItems()
          ],
        ),
      ),
    );
  }

  Padding mySearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(18),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            contentPadding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 3,
            ),
            fillColor: Colors.white,
            hintText: "Search...",
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black12,
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }

  Padding myAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, size: 25),
          Text(
            "Explore",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Image.asset("assets/images/menu.png", height: 25),
        ],
      ),
    );
  }
}
