import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 350,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 14, 19, 29),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Image.asset(
                        "assets/images/credit-card.png",
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 70,
                      child: Image.asset(
                        "assets/images/wifi.png",
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        "**** **** **** 19990",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 16, 80, 98),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16.0),
                      child: Text(
                        "Anabella Angela",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white.withAlpha(204),
                        ),
                        Transform.translate(offset: Offset(-10,0),child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white.withAlpha(204),
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
