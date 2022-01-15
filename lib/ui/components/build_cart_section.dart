import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/models/product.dart';
import 'package:zumarada/ui/widgets/cart_widget.dart';
import 'package:zumarada/ui/widgets/item_widget_in_cart.dart';

class BuildCartSection extends StatelessWidget {
  late final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            child: ListView.builder(
                itemCount: HomeTabBloc.get(context).products.length,
                itemBuilder: (context, index) => ItemWidgetInCart(
                      product: HomeTabBloc.get(context).products[index],
                    )),
          ),
        ),
        Expanded(flex: 2, child: CartWidget()),
      ],
    );
  }
}
