import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumarada/models/product.dart';

class ProductDetails extends StatelessWidget {
  late final Product product;

  ProductDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.title,
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            Image.network(
              product.image,
              height: 170,
              width: 170,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
