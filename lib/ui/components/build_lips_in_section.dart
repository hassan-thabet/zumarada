import 'package:flutter/cupertino.dart';
import 'package:zumarada/ui/widgets/category_in_home_widget.dart';

class BuildLipsInSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryInHomeWidget(
      imageCategory:
          'https://image.freepik.com/free-photo/beautiful-make-up-bright-lips_186202-1571.jpg',
      imageProduct1:
          'https://image.freepik.com/free-photo/top-view-lipstick-with-brush_23-2149096695.jpg',
      imageProduct2:
          'https://image.freepik.com/free-photo/front-view-red-lipstick-made-black-chrome-plastic_140725-13879.jpg',
      imageProduct3:
          'https://image.freepik.com/free-psd/bamboo-mascara-mockup-falling_1332-10109.jpg',
    );
  }
}
