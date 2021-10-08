import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

class Indicator extends StatelessWidget {

  late final bool isCurrentPage;

  Indicator(this.isCurrentPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 8.0 : 8.0,
      width: isCurrentPage ? 16.0 : 8.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? DART_MAIN_COLOR : LIGHT_MAIN_COLOR ,
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
