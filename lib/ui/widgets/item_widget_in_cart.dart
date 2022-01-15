import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/cart_tab/bloc.dart';
import 'package:zumarada/bloc/home/cart_tab/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/models/product.dart';

class ItemWidgetInCart extends StatelessWidget {
  ItemWidgetInCart({required this.product});
  late final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      // FadeInImage.assetNetwork(
                      //     height: 60,
                      //     width: 60,
                      //     fit: BoxFit.cover,
                      //     placeholder: 'assets/images/loding.gif',
                      //     image: product.image),
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 20, color: Colors.grey[900]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                product.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 15, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            height: 20,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: BlocBuilder<CartTabBloc, CartTabStates>(
                                builder: (context, state) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      child: Icon(
                                        Icons.add,
                                        size: 14,
                                      ),
                                      onTap: () {
                                        CartTabBloc.get(context).increment();
                                      }),
                                  Text(
                                    product.price,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.remove,
                                      size: 14,
                                    ),
                                    onTap: () {
                                      CartTabBloc.get(context).decrement();
                                    },
                                  ),
                                ],
                              );
                            })),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('${product.price} EG',
                          style: TextStyle(fontSize: 14, color: BUTTON_COLOR))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
            onTap: () {
              print('object');
            },
            child: Icon(
              Icons.delete,
              color: Colors.red[300],
              size: 20,
            )),
      ],
    );
  }
}
