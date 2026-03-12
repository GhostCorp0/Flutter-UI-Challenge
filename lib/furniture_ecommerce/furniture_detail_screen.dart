import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/data_model.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/furniture_detail_images.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/furniture_item_detail.dart';

class FurnitureDetailScreen extends StatelessWidget {
  final ProductModel products;
  const FurnitureDetailScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            //for product detail images
            FurnitureDetailImages(imageUrl:products.imageUrl),
            Padding(padding:EdgeInsets.symmetric(horizontal: 30,vertical:60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size:25,
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Image.asset(
                  "assets/images/menu.png",
                  color: Colors.white,
                  height:25,
                )
              ],
            )),
            FurnitureItemDetail(product:products)
          ],
        ),
      ),
    );
  }
}
