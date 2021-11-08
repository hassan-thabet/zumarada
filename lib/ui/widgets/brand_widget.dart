import 'package:flutter/material.dart';
import 'package:zumarada/models/brand.dart';

class BrandWidget extends StatelessWidget {
  late final Brand brand;

  BrandWidget({required this.brand});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              width: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/9.jpg',
                  image: brand.brandIcon)),
        ),
        Text(brand.brandName,
            style:
                Theme.of(context).textTheme.headline3!.copyWith(fontSize: 15)),
      ],
    );
  }
}
