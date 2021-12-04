import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumarada/ui/screens/category_screen.dart';
import 'package:zumarada/ui/widgets/category_widget.dart';

class BuildCategoryToolsInSaerchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryWidget(
      categoryName: 'Tools',
      image: 'assets/icons/tools.png',
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CategoryScreen()));
      },
    );
  }
}
