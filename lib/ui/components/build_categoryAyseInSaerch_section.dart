import 'package:flutter/material.dart';
import 'package:zumarada/ui/screens/category_screen.dart';
import 'package:zumarada/ui/widgets/category_widget.dart';

class BuildCategoryAyseInSaerchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryWidget(
      categoryName: 'EYSE',
      image: 'assets/icons/eyes.png',
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CategoryScreen()));
      },
    );
  }
}
