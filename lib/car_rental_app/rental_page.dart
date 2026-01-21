import 'package:flutter/material.dart';

class RentalPage extends StatefulWidget {
  const RentalPage({super.key});

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  "Your Location",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Row(
                  spacing: 8,
                  children: [
                    Icon(Icons.location_on, color: Colors.white),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Highway conventional area, Chicago',
                          style: TextStyle(
                            color: Color(0xffa8a8a8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  spacing: 8,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xff191f21),
                        fixedSize: Size(20, 20),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: Colors.white, size: 18),
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xff191f21),
                        fixedSize: Size(20, 20),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff2c2c2c),
                        Color(0xff1e1e1e),
                        Color(0xff151515),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(77),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(2, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your driver on the way",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "23:32",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Waiting Time",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ElevatedButton.icon(
                            icon: Icon(Icons.chat, color: Colors.black),
                            onPressed: () {},
                            label: Text(
                              "Chat",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xfff4f0e3),
                              elevation: 0,
                            ),
                          ),
                          SizedBox(height: 8),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.phone_outlined,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Call",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choose your\npreferred car",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      style: IconButton.styleFrom(
                        fixedSize: Size(20, 50),
                        side: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 400,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey, width: 0.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mazda CX-60',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Begin the adventure fo a lifetime",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        'assets/images/car.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(height: 16),
                      Row(
                        spacing: 12,
                        children: [
                          _buildPriceInfo(label: "Full day", value: "\$1500"),
                          _buildPriceInfo(label: "Hourly", value: "\$62"),
                          _buildPriceInfo(label: "Engine", value: "\$2003 cc"),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _showCarDetailsSheet();
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xfff4f0e3),
                              fixedSize: Size(50, 50),
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
        ),
      ),
    );
  }

  void _showCarDetailsSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => Container(
        height: MediaQuery.sizeOf(context).height * 0.75,
        decoration: BoxDecoration(
          color: Color(0xff101010),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Stack(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xfff4f0e3),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mazda CX-60",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(
                          "3CA-KH3R3P",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.cancel_outlined, color: Colors.black),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Image.asset(
                'assets/images/car.png',
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 280,
              left: 20,
              right: 20,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff333333),
                          Color(0xff2f2f2f),
                          Color(0xff575757),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      spacing: 18,
                      children: [
                        _buildLocationRow(
                          Icons.circle,
                          "203-453 west St San Francisco, CA 94114,USA",
                          "06:30 WAT (GMT+1)",
                          Colors.redAccent,
                        ),
                        _buildLocationRow(
                          Icons.flag,
                          "200-298 Clipper St San Francisco, CA 94114",
                          "06:30 WAT (GMT+1)",
                          Colors.white,
                        ),

                        Row(
                          spacing: 10,
                          children: [
                            Row(
                              spacing:10,
                              children: [
                                Icon(Icons.location_on,size: 20,color: Colors.grey,),
                                Text('250.5 KM',style: TextStyle(
                                    color: Colors.grey[300]
                                ),)
                              ],
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                Icon(Icons.access_time_outlined,size: 20,color: Colors.grey[300],),
                                Text("30mins",style: TextStyle(color: Colors.grey[300]),)
                              ],
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                Icon(Icons.monetization_on,size: 20,color: Colors.grey[300]),
                                Text("250Km",style: TextStyle(color: Colors.grey[300]),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            _buildInfoCard("Arrival Date","20 Jul 2024","Estimated",Icons.access_time_outlined),
                            SizedBox(width: 12,),
                            _buildInfoCard("Flight Arrival Date","20 Jul 2024","Estimated",Icons.access_time_outlined),
                          ]
                        )
                      ],
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


  Widget _buildInfoCard(String title,String value,String subTitle,IconData iconData) {
    return Expanded(child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors:[
          Color(0xff2c2c2c),
          Color(0xff2c2c2c),
          Color(0xff151515),
        ],),
        boxShadow:[
          BoxShadow(
              color: Colors.black.withAlpha(77),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 2)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 4,
            children: [
              Icon(iconData,color: Colors.white,size: 20,),
              Text(title,style: TextStyle(color: Colors.white,fontSize: 12),),
              SizedBox(height: 4,),
            ],
          ),
          Text(value,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
          Text(subTitle,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
        ],
      ),
    ));
  }

  Widget _buildLocationRow(
    IconData icon,
    String address,
    String time,
    Color iconColor,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 15),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                address,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriceInfo({required String label, required String value}) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xff262626),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 14)),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
