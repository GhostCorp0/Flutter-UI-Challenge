import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/package_tracking_app/widget/tracking_step.dart';

class PackageTrackingApp extends StatefulWidget {
  const PackageTrackingApp({super.key});

  @override
  State<PackageTrackingApp> createState() => _PackageTrackingAppState();
}

class _PackageTrackingAppState extends State<PackageTrackingApp> {
  bool _isOnTheWayExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff171717),
        appBar: AppBar(
          title: Text("N°A425HYJ8"),
          backgroundColor: Color(0xff171717),
          foregroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share_outlined, size: 28),
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xff242424),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                spacing: 12,
                children: [
                  Icon(Icons.card_giftcard, color: Colors.green),
                  Text(
                    "Parcel Data",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.chevron_right, color: Colors.white, size: 28),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              spacing: 12,
              children: [
                Text(
                  "My Package",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.edit, color: Colors.white, size: 28),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                TrackingStep(
                  title: "Created",
                  subtitle: "SAUERFORT, 67847 REBECA SPURS",
                  date: "26 Jan 2026",
                  index: 1,
                ),
                TrackingStep(
                  title: "On the way",
                  subtitle: "SAUERFORT ",
                  date: "26 Jan 2026",
                  index: 2,
                  hasDropDown: true,
                  isExpanded: _isOnTheWayExpanded,
                  onToggleExpand: () {
                    setState(() {
                      _isOnTheWayExpanded = !_isOnTheWayExpanded;
                    });
                  },
                ),
                TrackingStep(
                  title: "Received",
                  subtitle: "Berlin, 188047 OTTE ST. ",
                  date: "26 Jan 2026",
                  index: 3,
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                color: Color(0xff242424),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                spacing: 12,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Icon(Icons.payment, color: Colors.green),
                      Text(
                        "Payment Status",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 36,
                    children: [
                      SizedBox.shrink(),
                      Text(
                        "Shipping Cost",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$56.30",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                        ),
                      )
                    ],
                  ),
                  Row(
                    spacing: 36,
                    children: [
                      SizedBox.shrink(),
                      Text(
                        "Insurance",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    spacing: 36,
                    children: [
                      SizedBox.shrink(),
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$60.30",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),
                      )
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
