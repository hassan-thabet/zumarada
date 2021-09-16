import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

class MyBoootom extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback onTap;
  MyBoootom({required this.width, required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Botten_Color),
        height: 45,
        width: width,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 17, color: SCAFFOLD_BACKGROUND_COLOR),
          ),
        ),
      ),
    );
  }
}
