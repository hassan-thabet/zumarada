
import 'package:flutter/material.dart';
class CustomTextFieldWidget extends StatelessWidget {
  late final String hint;
  late final TextInputType keyboardType;
  late final TextEditingController controller;
  late final bool isSecure;
  late final IconData? suffixIconData;
  late final VoidCallback? visibilityOnTap;


  CustomTextFieldWidget({
      required this.hint,
      required this.keyboardType,
      required this.controller,
      required this.isSecure,
      this.suffixIconData,
      this.visibilityOnTap
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        style: Theme.of(context).textTheme.bodyText1,
        keyboardType: keyboardType,
        controller: controller,
        obscureText: isSecure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: visibilityOnTap,
            icon: Icon(
              suffixIconData,
            ),
          ),
          labelText: hint,
          labelStyle: Theme.of(context).textTheme.bodyText2,
        ),
        cursorColor: Colors.black54,
      ),
    );
  }
}
