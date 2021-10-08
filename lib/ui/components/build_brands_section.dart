import 'package:flutter/material.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/ui/widgets/brand_widget.dart';
class BuildBrandsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 90,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: HomeTabBloc.get(context).brands.length,
            itemBuilder: (context, index) =>
                BrandWidget(brand: HomeTabBloc.get(context).brands[index])),
      ),
    );
  }
}
