import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/models/product.dart';
import 'package:zumarada/ui/screens/product_details.dart';

class ProductSaleWidget extends StatelessWidget {
  late final Product product;
  final VoidCallback favoritonTab;

  ProductSaleWidget({required this.product, required this.favoritonTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ProductDetails(product: product))),
      child: Card(
        child: Container(
          width: 175,
          color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage.assetNetwork(
                  height: 170,
                  width: 170,
                  fit: BoxFit.cover,
                  
                  placeholder: 'assets/images/loding.gif',
                  image: product.image),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Text(product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 15)),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'SALE',
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                        Text(
                          product.price + ' EGP ',
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    Text(
                      product.price + ' EGP',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    IconButton(
                        onPressed: favoritonTab,
                        icon: HomeTabBloc.get(context).buttemfavorit == true
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
