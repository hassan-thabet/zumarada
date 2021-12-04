import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumarada/ui/screens/category_screen.dart';
import 'package:zumarada/ui/widgets/category_widget.dart';

class BuildCategoryLipsInSaerchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryWidget(
      categoryName: 'LIPS',
      image: 'assets/icons/lips.png',
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CategoryScreen()));
      },
    );
  }
}
