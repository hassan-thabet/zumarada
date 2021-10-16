import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/models/product.dart';
import 'package:zumarada/ui/components/build_products_section.dart';

class ScrollProductDetails extends StatelessWidget {
  late final Product product;

  ScrollProductDetails({required this.product});
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.30,
      minChildSize: 0.30,
      maxChildSize: 0.70,
      builder: (
        context,
        scrollController,
      ) {
        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [Colors.white70, SCAFFOLD_BACKGROUND_COLOR]),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(50),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                controller: scrollController,
                padding: EdgeInsets.zero,
                children: [
                  Image.asset(
                    'assets/icons/scrollup.png',
                    height: 15,
                    width: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 300,
                        child: Text(
                          product.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      Text(
                        product.price + ' EGP',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    product.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(color: BLACK_COLOR, height: 0),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      'How to use',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontSize: 18),
                    ),
                    trailing: Icon(Icons.arrow_drop_down),
                  ),
                  Divider(color: BLACK_COLOR, height: 0),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      'Ingredients',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontSize: 18),
                    ),
                    trailing: Icon(Icons.arrow_drop_down),
                  ),
                  Divider(color: BLACK_COLOR, height: 0),
                  Text(
                    'You might also like',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BuildProductsSection(),
                ],
              ),
            ));
      },
    );
  }
}
