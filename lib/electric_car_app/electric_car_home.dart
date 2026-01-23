import 'package:flutter/material.dart';

class ElectricCarHome extends StatefulWidget {
  const ElectricCarHome({super.key});

  @override
  State<ElectricCarHome> createState() => _ElectricCarHomeState();
}

class _ElectricCarHomeState extends State<ElectricCarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lamborghini.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Mileage", style: TextStyle(color: Colors.grey)),
                        Text(
                          "2.548KM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Range", style: TextStyle(color: Colors.grey)),
                        Text(
                          "278KM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Battery", style: TextStyle(color: Colors.grey)),
                        Text(
                          "43%",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Temperature",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "25 C ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.lock, color: Colors.white),
                        Text("Locked", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.ac_unit, color: Colors.white),
                        Text("Fan", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.video_camera_front, color: Colors.white),
                        Text("Security", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.all_inclusive, color: Colors.white),
                        Text("Valet", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topLeft,
                      colors: [Colors.black38, Colors.white30, Colors.black54],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset('assets/images/neon.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "1234 Elm Street",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Anytown USA 5678",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.chevron_right, color: Colors.white),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topLeft,
                      colors: [Colors.black38, Colors.white30, Colors.black54],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset('assets/images/neon.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CLOSEST CHARGE STATION",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "45678 Mable Avenue ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Springfield USA 12345",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.chevron_right, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.black38,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ""),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_on),
                label: "",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.purpleAccent,
            child: Icon(Icons.flash_on, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
