import 'package:flutter/material.dart';
import 'package:zumarada/ui/widgets/category_in_home_widget.dart';

class BuildForHerInSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryInHomeWidget(
      imageCategory:
          'https://image.freepik.com/free-photo/skin-care-woman-with-beauty-face-touching-healthy-facial-skin-portrait-beautiful-smiling-girl-model-with-natural-makeup-touching-glowing-hydrated-skin-white-wall_176420-34251.jpg',
      imageProduct1: 'assets/images/face1.png',
      imageProduct2: 'assets/images/face1.png',
      imageProduct3: 'assets/images/face1.png',
      nameCategory: 'For Her',
      nameProduct1: 'fkjkds',
      nameProduct2: 'dkfjje',
      nameProduct3: 'kdfjicj',
    );
  }
}
