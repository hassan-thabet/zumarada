import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/models/product.dart';

class ProductComponent extends StatelessWidget {
  late final Product product;
  final VoidCallback favoritonTab;

  ProductComponent({required this.product, required this.favoritonTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 175,
        color: Colors.white70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.image,
              height: 170,
              width: 170,
              fit: BoxFit.cover,
            ),
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
            // SizedBox(
            //   height: 5,
            // ),
            // Text(
            //   'Matte Lip stick',
            // ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
    );
  }
}
