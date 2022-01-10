import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/models/product.dart';
import 'package:zumarada/ui/components/build_products_section.dart';

class ScrollProductDetails extends StatefulWidget {
  late final Product product;

  ScrollProductDetails({required this.product});

  @override
  _ScrollProductDetailsState createState() => _ScrollProductDetailsState();
}

bool descVisibile = false;

class _ScrollProductDetailsState extends State<ScrollProductDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DraggableScrollableSheet(
      initialChildSize: 0.30,
      minChildSize: 0.30,
      maxChildSize: 0.70,
      builder: (
        context,
        scrollController,
      ) {
        return Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        colors: [Colors.white70, SCAFFOLD_BACKGROUND_COLOR]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(50),
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 21, 8, 8),
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
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: 200,
                              child: Text(
                                widget.product.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              widget.product.price + ' EGP',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.product.description,
                        style: Theme.of(context).textTheme.bodyText2,
                        maxLines: descVisibile == false ? 3 : 15,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                descVisibile = !descVisibile;
                              });
                            },
                            child: descVisibile == false
                                ? Text(
                                    'MORE',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  )
                                : Text(
                                    ' LESS',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                          ),
                        ],
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
                            .copyWith(fontSize: 22),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      BuildProductsSection(),
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.only(right: 12, top: 6),
              child: CircleAvatar(
                backgroundColor: BUTTON_COLOR,
                radius: 25,
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
