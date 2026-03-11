import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/gaming_colors.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/my_bottom_navigation_bar.dart';
import 'package:flutter_ui_challenge/gaming_shop_app/product_list.dart';

class GamingHome extends StatefulWidget {
  const GamingHome({super.key});

  @override
  State<GamingHome> createState() => _GamingHomeState();
}

class _GamingHomeState extends State<GamingHome> {
  List<String> category = [
    "Controllers",
    "Headsets",
    "Keyboards",
    "Speakers",
    "VR Accessories",
  ];
  int currentSelectItems = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:MyBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //for menu and search
          myAppBarItems(),
          //for welcome text
          categorySelection(),
          //for body items
          ProductList()
        ],
      ),
    );
  }

  SizedBox categorySelection() {
    return  SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return GestureDetector(onTap:(){

          },child:Container(
            padding: EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category[index],style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: currentSelectItems == index ?kSecondaryColor:kSecondTextColor
                )),
                SizedBox(height: 5),
                Padding(padding: EdgeInsets.only(left:0),child: Container(height:3,width:50,color: currentSelectItems == index?kSecondaryColor:Colors.transparent))
              ],
            ),
          ));
        },
      ),
    );
  }


  Container welcomeText() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      child: Text(
        "Welcome to \nPlaystation Accessories",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  Padding myAppBarItems() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/icon_menu.svg"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/icon_search.svg"),
          ),
        ],
      ),
    );
  }
}
