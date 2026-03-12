import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/stojo_app/stojo_detail.dart';
import 'package:flutter_ui_challenge/stojo_app/stojo_detail_model.dart';

class StojoHomeScreen extends StatefulWidget {
  const StojoHomeScreen({super.key});

  @override
  State<StojoHomeScreen> createState() => _StojoHomeScreenState();
}

class _StojoHomeScreenState extends State<StojoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/stozo_menu1.png", height: 25),
                  Spacer(),
                  Image.asset("assets/images/stozo_search.png", height: 25),
                  Spacer(),
                  Image.asset(
                    "assets/images/stozo_shopping_bag.png",
                    height: 25,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(22),
              child: Row(
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 650,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.61,
                ),
                itemCount: userItems.length,
                itemBuilder: (context, index) {
                  final userItem = userItems[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:(_) => StojoDetailScreen(stojo:userItem)));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:12 ),
                          child: Container(
                            height: 245,
                            decoration: BoxDecoration(
                              color: userItem.color,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  CircleAvatar(radius: 65,backgroundColor:  Colors.white,),
                                  Padding(
                                    padding: const EdgeInsets.only(top:25,left :12),
                                    child: Image.asset(
                                      userItem.image,
                                      height: 180,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20,top:2),
                          child: Text(userItem.name,style: TextStyle(
                             fontSize: 18,
                            fontWeight:FontWeight.bold
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20,top:2),
                          child: Text("\$${userItem.price}",style: TextStyle(
                              fontSize: 18,
                              fontWeight:FontWeight.bold
                          )),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
