import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

class CategoryWidget extends StatelessWidget {
  late final String categoryName;
  late final String image;
  late final VoidCallback onPressed;

  CategoryWidget(
      {required this.image,
      required this.categoryName,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: DART_MAIN_COLOR,
            child: Image.asset(
              image,
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            categoryName,
            style:
                Theme.of(context).textTheme.headline3!.copyWith(fontSize: 20),
          )
        ],
      ),
    );
  }
}
