import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/data_model.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/furniture_detail_screen.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/product.dart';

class FurnitureItems extends StatelessWidget {
  const FurnitureItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.63,
          ),
          itemCount: productItems.length,
          itemBuilder: (context, index) {
            Size size = MediaQuery.of(context).size;
            final product = productItems[index];
            return Transform.translate(
              offset: Offset(0, index.isOdd ? 28 : 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FurnitureDetailScreen(products: product),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: product.imageUrl,
                          child: Image(
                            height: size.height * 0.25,
                            width: size.width * 0.45,
                            image: AssetImage(product.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        product.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        product.manufacturer,
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
