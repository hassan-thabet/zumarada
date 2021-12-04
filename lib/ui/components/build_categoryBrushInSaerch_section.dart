import 'package:flutter/material.dart';
import 'package:zumarada/ui/screens/category_screen.dart';
import 'package:zumarada/ui/widgets/category_widget.dart';

class BuildCategoryBrushInSaerchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryWidget(
      image: 'assets/icons/brush.png',
      categoryName: 'BRUSH',
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CategoryScreen()));
      },
    );
  }
}
