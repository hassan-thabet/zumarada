import 'package:flutter/material.dart';
import 'package:zumarada/ui/components/build_cart_section.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'MY CART',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: BulidCartSection());
  }
}
