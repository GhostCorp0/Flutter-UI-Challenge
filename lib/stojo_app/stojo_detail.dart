import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/stojo_app/stojo_detail_model.dart';

class StojoDetailScreen extends StatelessWidget {
  final StojoDetail stojo;

  const StojoDetailScreen({super.key, required this.stojo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  decoration: BoxDecoration(
                    color: stojo.color,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Center(
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  radius: 130,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40, right: 30),
                                child: Image.asset(
                                  stojo.image,
                                  height: 350,
                                  width: 190,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: stojo.sideColor,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/stozo_shopping_bag.png",
                                  color: Colors.white,
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(height: 40),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.black,
                                    ),
                                    const SizedBox(height: 10),
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: stojo.color,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.blueGrey,
                                    ),
                                    const SizedBox(height: 10),
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.green,
                                    ),
                                    const SizedBox(height: 10),
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.pink,
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: MediaQuery.of(context).padding.top,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stojo.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black45,
                            ),
                            SizedBox(height: 15),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black45,
                            ),
                            SizedBox(height: 15),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black45,
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dishwasher Safe",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "No phthalates, leads or glues ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "BPA-free, polypropylene lid and heat sleeve ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
                bottom: 5,
              ),
              child: Text(
                "Size",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 110,
              padding: EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      padding: EdgeInsets.all(0.7 * (index + 2)),
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: stojo.color.withAlpha(127),
                      ),
                      child: Image.asset(stojo.image),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "\$${stojo.price}.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 67,
                      decoration: BoxDecoration(
                        color: stojo.color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                        ),
                      ),
                      child: Text("Add to Cart",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:25,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
