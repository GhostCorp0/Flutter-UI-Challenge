import 'package:flutter/material.dart';

class StatusLine extends StatelessWidget {
  const StatusLine({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 25,
      color:index == 1?Color(0xffecd85c):index == 2?Color(0xffd58242):Colors.transparent
    );
  }
}
