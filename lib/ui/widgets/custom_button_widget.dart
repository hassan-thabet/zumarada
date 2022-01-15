import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  late final String text;
  late final VoidCallback onTap;

  CustomButtonWidget({required this.text , required this.onTap});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: BUTTON_COLOR),
          width: double.infinity,
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
      ),
    );
  }
}
