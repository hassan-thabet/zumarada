import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/ui/widgets/product_sale_widget.dart';

class BuildProductsSaleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 299,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: HomeTabBloc.get(context).products.length,
            itemBuilder: (context, index) => ProductSaleWidget(
                  product: HomeTabBloc.get(context).products[index],
                  favoritonTab: () {
                    HomeTabBloc.get(context).buttemFavorit();
                  },
                )));
  }
}