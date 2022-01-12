import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/models/product.dart';
import 'package:zumarada/ui/widgets/cart_widget.dart';
import 'package:zumarada/ui/widgets/custom_button_widget.dart';
import 'package:zumarada/ui/widgets/item_widget_in_cart.dart';

class BulidCartSection extends StatelessWidget {
  late Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            child: ListView.builder(
                itemCount: HomeTabBloc.get(context).products.length,
                itemBuilder: (context, index) => ItemWidgetInCart(
                      product: HomeTabBloc.get(context).products[index],
                    )),
          ),
        ),
        Expanded(flex: 1, child: CartWidget()),
      ],
    );
  }
}
