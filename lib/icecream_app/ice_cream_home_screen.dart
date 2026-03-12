import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/icecream_app/icecream_detail.dart';
import 'package:flutter_ui_challenge/icecream_app/icecream_model.dart';

import 'icecream_colors.dart';

class IceCreamHomeScreen extends StatelessWidget {
  const IceCreamHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar(),
              Container(
                width: size.width * 0.83,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ice Parlour",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "Ice Cream",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: primaryColor,
                          ),
                        ),
                        searchBar(),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: SizedBox(
                            height: size.height * 0.35,
                            width: double.infinity,
                            child: ListView.builder(
                              itemCount: iceCreamList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final iceCream = iceCreamList[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder:(_) =>IcecreamDetail(iceCream: iceCream)));
                                  },
                                  child: SizedBox(
                                    height: size.height * 0.35,
                                    width: size.width * 0.46,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 10,
                                          child: Material(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30),
                                            ),
                                            elevation: 5,
                                            color: iceCream.color,
                                            child: Container(
                                              height: size.height * 0.27,
                                              width: size.width * 0.42,
                                              decoration: BoxDecoration(
                                                color: iceCream.color,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40),
                                                  topRight: Radius.circular(40),
                                                  bottomLeft: Radius.circular(
                                                    30,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    30,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 18,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height: 100),
                                                    Text(
                                                      iceCream.name,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                        height: 1.1,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    SizedBox(height: 20),
                                                    Text(
                                                      "\$${iceCream.price}",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                        height: 1.1,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              right: 20,
                                                              bottom: 5,
                                                            ),
                                                        child: Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.black26,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 45,
                                          child: Container(
                                            height: size.height * 0.12,
                                            width: size.width * 0.21,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  iceCream.image,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 20),
                          child: Text(
                            "Popular Flavours",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.22,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: popularFlavours.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: size.height * 0.18,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        color: Colors.amberAccent,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            popularFlavours[index].image,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    popularFlavours[index].name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.47,
            left: size.width * 8.13,
            child: Container(
              height: 60,
              width: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 6),
                ),
              ),
            ),
          ),
          Positioned(
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    return Padding(
      padding: EdgeInsets.only(right: 25, top: 25),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 30),
            fillColor: Colors.black12.withAlpha(20),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 19, color: Colors.black45),
            suffixIcon: Icon(Icons.search, color: Colors.black26),
          ),
        ),
      ),
    );
  }

  Widget sideBar() {
    return Expanded(
      child: Container(
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 50),
              child: Image.asset("assets/images/ice_icon.png", width: 25),
            ),
            SizedBox(height:20),
            rotatableText("Chocolate"),
            rotatableText("All"),
            rotatableText("Exotic"),
            rotatableText("Vanilla"),
          ],
        ),
      ),
    );
  }

  Widget rotatableText(String name) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(name, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
