import 'package:flutter/material.dart';

class BeautyTipsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'BeautyTipsScreen');
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: 250,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          'https://image.freepik.com/free-photo/joyful-girl-with-face-mask-surprise-green-eyed-woman-posing-white-wall-after-washing-her-hair_197531-13982.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
