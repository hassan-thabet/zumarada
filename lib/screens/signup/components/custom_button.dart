import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback onTap;
  final Color color;

  CustomButton(
      {required this.width,
      required this.text,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        width: width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Text(
              text,
              style: TextStyle(fontSize: 17, color: SCAFFOLD_BACKGROUND_COLOR),
            ),
          ),
        ),
      ),
    );
  }
}
