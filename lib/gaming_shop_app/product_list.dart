import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/gaming_colors.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/gaming_detail_screen.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/product.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/rating.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int currentSelectedItems = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return gamingItems(index);
        },
      ),
    );
  }

  GestureDetector gamingItems(int index) {
    double scale = 1.1;
    Color backgroundColor = kBackgroundColor;
    Color textColor = kPrimaryTextColor;
    if (currentSelectedItems == index) {
      scale = 1.35;
      backgroundColor = kSelectCardBackgroundColor;
      textColor = Colors.white;
    }
    final game = productList[index];
    return GestureDetector(
      onTap: () {
        if (currentSelectedItems == index) {
          Navigator.push(context,MaterialPageRoute(builder:(_) => GamingDetailScreen(game:game)));
        } else {
          setState(() {
            currentSelectedItems = index;
          });
        }
      },
      child: Row(
        children: [
          Container(
            width: 230 * scale,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                Container(
                  width: 230 * scale,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(16, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 28,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7 * scale),
                            Padding(
                              padding: EdgeInsets.only(right: 90),
                              child: Text(
                                game.name,
                                maxLines: 2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14 * scale,
                                  color: textColor,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            SizedBox(height: 7 * scale),
                            Rating(),
                            SizedBox(height: 8 * scale),
                            Text(
                              "\$${game.price}",
                              maxLines: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14 * scale,
                                color: textColor,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(height: 8 * scale),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/icon_add_cart.svg",
                            width: 17,
                          ),
                        ),
                      ),
                      Positioned(
                        right:-60,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(game.imagePic, height:75 * scale),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
