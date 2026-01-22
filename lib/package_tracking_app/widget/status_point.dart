import 'package:flutter/material.dart';

class StatusPoint extends StatelessWidget {
  const StatusPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color:  Color(0xffd58242),
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle
          ),
        )
      ],
    );
  }
}
