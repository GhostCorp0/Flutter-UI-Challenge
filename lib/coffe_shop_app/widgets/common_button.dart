import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/colors.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CommonButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: xprimaryColor,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: SizedBox(
          height: 55,
          width: double.infinity,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
    );
  }
}
