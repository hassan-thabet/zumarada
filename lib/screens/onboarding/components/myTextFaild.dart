import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final TextEditingController controller;

  final bool isSecure;
  final IconData? suffixIconData;
  final VoidCallback? visibilityOnTap;

  MyTextField({
    required this.hint,
    required this.controller,
    required this.isSecure,
    this.visibilityOnTap,
    this.suffixIconData,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
