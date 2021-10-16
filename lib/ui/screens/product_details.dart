import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumarada/models/product.dart';
import 'package:zumarada/ui/widgets/scroll_product_details.dart';

class ProductDetails extends StatelessWidget {
  late final Product product;

  ProductDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Stack(
        children: [
          Container(
            height: size.height * 0.70,
            child: Image.network(
              product.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ScrollProductDetails(
            product: product,
          ),
        ],
      )),
    );
  }
}
