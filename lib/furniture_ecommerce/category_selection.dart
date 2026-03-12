import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/furniture_ecommerce/data_model.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex == index;
                });
              },
              child: Padding(padding:EdgeInsets.only(left:30),
              child:Column(
                children: [
                  Text(categoryList[index],style: TextStyle(
                    color: selectedIndex == index? Colors.black:Colors.black26,
                    fontSize: 18,
                    fontWeight: selectedIndex == index?FontWeight.w500:FontWeight.normal
                  )),
                  Container(
                    height:3,
                    width:26,
                    decoration: BoxDecoration(
                      color: selectedIndex == index?Colors.orange:Colors.transparent,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  )
                ],
              ),),
            );
          },
        ),
      ),
    );
  }
}
