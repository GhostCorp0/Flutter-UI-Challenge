import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/coffee_detail_screen.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/colors.dart';

import 'coffe_model.dart';

class CoffeeAppHomeScreen extends StatefulWidget {
  const CoffeeAppHomeScreen({super.key});

  @override
  State<CoffeeAppHomeScreen> createState() => _CoffeeAppHomeScreenState();
}

class _CoffeeAppHomeScreenState extends State<CoffeeAppHomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 17, 17, 17),
                    Color.fromARGB(255, 49, 49, 49),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: xsecondaryColor),
                      ),
                      Row(
                        children: [
                          Text(
                            "Kathmandu, Nepal",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: xsecondaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff2a2a2a),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/ic_search.png",
                                color: Colors.white,
                                height: 35,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(0),
                                    isDense: true,
                                    border: InputBorder.none,
                                    hintText: "Search coffee",
                                    hintStyle: TextStyle(
                                      fontSize: 18,
                                      color: xsecondaryColor,
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 60,
                        width: 55,
                        decoration: BoxDecoration(
                          color: xprimaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(Icons.tune, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/images/banner.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 35),
        SizedBox(
          height: 30,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 25 : 10,
                    right: index == coffeeCategories.length - 1 ? 25 : 10,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? xprimaryColor
                        : xsecondaryColor.withAlpha(25),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  child: Text(
                    coffeeCategories[index],
                    style: TextStyle(
                      fontWeight: selectedIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: 16,
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 270,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
          ),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 25),
          physics: NeverScrollableScrollPhysics(),
          itemCount: listOfCoffee.length,
          itemBuilder: (context, index) {
            final coffee = listOfCoffee[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (_) => CoffeeDetailScreen(coffee:coffee,heroTag: "${coffee.image}_$index")));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Hero(
                            tag: "${coffee.image}_$index",
                            child: Image.asset(
                              coffee.image,
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black12.withAlpha(50),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(25),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset("assets/images/ic_star_filled.png"),
                                SizedBox(width: 5),
                                Text(
                                  "${coffee.rate}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      coffee.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    Text(coffee.type,style: TextStyle(color: xsecondaryColor)),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${coffee.price}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: xprimaryColor,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Icon(Icons.add,color: Colors.white,size:18),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
