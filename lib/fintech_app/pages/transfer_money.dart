import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/fintech_app/widgets/credit_card.dart';

import 'top_up.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer"),
        leading: IconButton.outlined(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose cards",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CreditCard(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose recipients",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Contacts",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, size: 30),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: index == 0 ? Colors.teal : Colors.grey,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              index == 0
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.check, color: Colors.teal),
                                        ],
                                      ),
                                    )
                                  : SizedBox(),
                              SizedBox(height: 12),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  "assets/images/person.jpeg",
                                ),
                              ),
                              Text(
                                "Maria",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sevchenko",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> TopUpPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    fixedSize: Size(double.maxFinite, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
