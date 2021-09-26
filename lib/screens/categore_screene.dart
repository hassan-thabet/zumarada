import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/search_categore/bloc.dart';
import 'package:zumarada/bloc/search_categore/stats.dart';

import 'home/components/product_theCategore.dart';

class CategoreScreene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCategoreBloc, SearchCategoreStats>(
        listener: (context, stats) {},
        builder: (context, stats) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'LIPS',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
                itemCount: SearchCategoreBloc.get(context).products.length,
                itemBuilder: (context, index) => ProductTheCategore(
                  favoritonTab: () {},
                  product: SearchCategoreBloc.get(context).products[index],
                ),
              ),
            ),
          );
        });
  }
}
