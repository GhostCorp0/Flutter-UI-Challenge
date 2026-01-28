import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/fintech_app/widgets/credit_card.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: Text("My Card", style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20),
              //BackCard
              BackCard(),
              SizedBox(height: 25),
              //FrontCard
              CreditCard(),
              SizedBox(height: 30),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  "Add new card",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                icon: Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.grey[100]!),
                  fixedSize: Size(double.maxFinite,55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  backgroundColor: Colors.grey[200],
                  foregroundColor: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 14, 19, 29),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/card-design.png",
              fit: BoxFit.cover,
              width: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white.withAlpha(204),
                        ),
                        Transform.translate(
                          offset: Offset(-10, 0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white.withAlpha(204),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "**** **** **** 1990",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "9/23",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),

                Text(
                  "Anabella Angela",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
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
