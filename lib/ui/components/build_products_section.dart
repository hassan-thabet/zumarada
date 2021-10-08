import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/ui/widgets/product_widget.dart';

class BuildProductsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 291,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: HomeTabBloc.get(context).products.length,
            itemBuilder: (context, index) => ProductWidget(
                  product: HomeTabBloc.get(context).products[index],
                  favoritonTab: () {
                    HomeTabBloc.get(context).buttemFavorit();
                  },
                )));
  }
}
