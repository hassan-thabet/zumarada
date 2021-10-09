import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/bloc/search_categore/bloc.dart';
import 'package:zumarada/bloc/search_categore/stats.dart';
import 'package:zumarada/ui/components/build_search_section.dart';
import 'package:zumarada/ui/widgets/product_widget.dart';

class CategoryScreen extends StatelessWidget {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BuildSearchSection(),

                    GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.6,
                      shrinkWrap: true,
                      children: List.generate(
                          SearchCategoreBloc.get(context).products.length,
                          (index) => ProductWidget(
                            product: HomeTabBloc.get(context).products[index],
                            favoritonTab: () {
                            },
                          )),
                    ),

                  ],
                ),
              ),
            ),
          );
        });
  }
}
