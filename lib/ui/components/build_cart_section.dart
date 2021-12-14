import 'package:flutter/material.dart';
import 'package:zumarada/ui/widgets/item_widget_in_cart.dart';

class BulidCartSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5, itemBuilder: (context, index) => ItemWidgetInCart());
  }
}
