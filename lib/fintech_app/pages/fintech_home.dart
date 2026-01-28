import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/fintech_app/pages/my_card.dart';
import 'package:flutter_ui_challenge/fintech_app/pages/profile_page.dart';
import 'package:flutter_ui_challenge/fintech_app/pages/scan.dart';
import 'package:flutter_ui_challenge/fintech_app/widgets/action_buttons.dart';
import 'package:flutter_ui_challenge/fintech_app/widgets/credit_card.dart';
import 'package:flutter_ui_challenge/fintech_app/widgets/transaction_list.dart';

import 'activity.dart';

class FintechHome extends StatelessWidget {
  const FintechHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 80, 98),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Anabella Angela",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 110),
                        ActionButtons(),
                        SizedBox(height: 30),
                        TransactionList(),
                      ],
                    ),
                  ),
                  Positioned(top: 20, left: 25, right: 25, child: CreditCard()),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

class FintechMainPage extends StatefulWidget {
  const FintechMainPage({super.key});

  @override
  State<FintechMainPage> createState() => _FintechMainPageState();
}

class _FintechMainPageState extends State<FintechMainPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const FintechHome(),
    const MyCardPage(),
    const ScanPage(),
    const ActivityPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, "Home", 0),
            tabItem(Icons.credit_card, "My Card", 1),
            FloatingActionButton(
              onPressed: () {onTabTapped(2);},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Color.fromARGB(255, 16, 80, 98),
              child: Icon(Icons.qr_code_scanner, color: Colors.white),
            ),
            tabItem(Icons.bar_chart,"Activity",3),
            tabItem(Icons.person,"Activity",4),
          ],
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
      onPressed: () {
        onTabTapped(index);
      },
      icon: Column(
        children: [
          Icon(icon, color: currentIndex == index ? Colors.black : Colors.grey),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: currentIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
