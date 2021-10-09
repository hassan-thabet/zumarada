import 'package:flutter/material.dart';

class BestSellersPageWidget extends StatelessWidget {
  late final String imageLink;

  BestSellersPageWidget({required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imageLink))),
        ),
      ],
    );
  }
}
