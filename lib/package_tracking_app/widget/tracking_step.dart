import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/package_tracking_app/widget/status_line.dart';
import 'package:flutter_ui_challenge/package_tracking_app/widget/status_point.dart';

class TrackingStep extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final bool isActive;
  final bool hasDropDown;
  final bool isExpanded;
  final VoidCallback? onToggleExpand;
  final int index;

  const TrackingStep({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    this.isActive = false,
    this.hasDropDown = false,
    this.isExpanded = false,
    this.onToggleExpand,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: index == 1
                    ? Color(0xffecd85c)
                    : index == 2
                    ? Color(0xffd59242)
                    : Color(0xff242424),
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
              ),
              child: Icon(
                index == 1
                    ? Icons.inventory_rounded
                    : index == 2
                    ? Icons.directions_car_filled
                    : Icons.check_circle_outline,
                size: 28,
                color: index == 3 ? Colors.white : Colors.black,
              ),
            ),
            StatusLine(index: index),
            if(index ==2)
              if(hasDropDown && isExpanded)
                 Column(
                   children: [
                     StatusPoint(),
                     StatusLine(index: index),
                     StatusPoint(),
                     StatusLine(index: index),
                     StatusPoint(),
                     StatusLine(index: index),
                     StatusPoint(),
                     StatusLine(index: index)
                   ],
                 )
          ],
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        if (hasDropDown)
                          GestureDetector(
                            onTap: onToggleExpand,
                            child: Icon(
                              isExpanded
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        Spacer(),
                        if (index != 3)
                          Text(date, style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              Text(subtitle, style: TextStyle(color: Colors.white)),
              SizedBox(height: 25),
              if (hasDropDown && isExpanded)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Delivered',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "26 Jan 2025",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Arrived at the sorting center',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "26 Jan 2025",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Sent to Berlin',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "27Jan 2025",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text('Berlin',style: TextStyle(color: Colors.white),)
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
