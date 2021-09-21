import 'package:flutter/material.dart';
import 'package:zumarada/models/brand.dart';

class BrandComponent extends StatelessWidget {
  late final Brand brand;

  BrandComponent({required this.brand});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(brand.brandIcon),
          ),
        ),
        Text(brand.brandName,
            style:
                Theme.of(context).textTheme.headline3!.copyWith(fontSize: 15)),
      ],
    );
  }
}
