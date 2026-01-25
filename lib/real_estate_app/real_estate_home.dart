import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/real_estate_app/property_details.dart';

import 'home_bottom_nav_bar.dart';

class RealEstateHome extends StatefulWidget {
  const RealEstateHome({super.key});

  @override
  State<RealEstateHome> createState() => _RealEstateHomeState();
}

class _RealEstateHomeState extends State<RealEstateHome> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Scaffold(
          backgroundColor: theme.primaryColor,
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.primaryColor,
                          border: Border.all(color: Colors.white),
                        ),
                        child: Icon(Icons.home_outlined, color: Colors.white),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Current Location",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white.withAlpha(178),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "24, Mikel Johnson, 85",
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white.withAlpha(102),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(102),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: Colors.white),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      color: Colors.white.withAlpha(178),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list, color: Colors.white),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white.withAlpha(102),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView(
                      padding: EdgeInsets.all(20),
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              stops: [0, 4.1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xff35573b), Colors.grey],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "GET YOUR 10%\nCASHBACK",
                                        style: theme.textTheme.titleLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                      ),
                                      Text(
                                        "*Expires 31 Sept 2024",
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/house.png',
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 28),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recommend for you",
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "By default",
                                    style: theme.textTheme.titleMedium
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        ...List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: PropertyCard(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PropertyDetails(image:"assets/images/house_ad.jpg"),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(bottom: 58, left: 88, right: 88, child: HomeBottomNavBar()),
      ],
    );
  }
}

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/house_ad.jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xff48e256),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Text("Active"),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffc6c8f3),
                        ),
                        icon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit_outlined),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffc6c8f3),
                        ),
                        icon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.link_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xff4Be256),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "\$250,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Green Field Island, Western \nBypass",
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      Icon(Icons.bookmark_outline),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.deepOrangeAccent,
                        size: 18,
                      ),
                      Text(
                        "Off sixway roundabout, byepass (5.1 KM)",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.king_bed_outlined),
                      SizedBox(width: 4),
                      Text("3 bedrooms"),
                      SizedBox(width: 16),
                      Icon(Icons.bathtub),
                      SizedBox(width: 4),
                      Text("2 bedrooms"),
                      SizedBox(width: 16),
                    ],
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
