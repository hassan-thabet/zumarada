import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/bloc/home/home_tab/states.dart';
import 'package:zumarada/ui/components/build_bestsellers_section.dart';
import 'package:zumarada/ui/components/build_brands_section.dart';
import 'package:zumarada/ui/components/build_eyse_in_home_sechen.dart';
import 'package:zumarada/ui/components/build_face_in_section.dart';
import 'package:zumarada/ui/components/build_forher_in_section.dart';
import 'package:zumarada/ui/components/build_lips_in_section.dart';
import 'package:zumarada/ui/components/build_products_sale_section.dart';
import 'package:zumarada/ui/components/build_products_section.dart';
import 'package:zumarada/ui/components/build_seperator_section.dart';
import 'package:zumarada/ui/widgets/Advertising%20_Window_Widget.dart';
import 'package:zumarada/ui/widgets/beauty_tips_widget.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabBloc, HomeTabStates>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildBestSellersSection(),
                BuildSeperatorSection(title: 'Brands', onPressed: () {}),
                BuildBrandsSection(),
                AdvertisingWindowWidget(),
                BuildSeperatorSection(title: 'Sale', onPressed: () {}),
                BuildProductsSaleSection(),
                BuildFaceInSection(),
                BuildLipsInSection(),
                BuildEyseInSection(),
                BuildForHerInSection(),
                BuildSeperatorSection(title: 'New Arrivals', onPressed: () {}),
                BuildProductsSection(),
                BuildSeperatorSection(
                    title: 'Beauty Tips',
                    onPressed: () {
                      Navigator.pushNamed(context, 'BeautyTipsScreen');
                    }),
                BeautyTipsWidget(),
                BuildSeperatorSection(
                    title: 'Lip Collection', onPressed: () {}),
                BuildProductsSection(),
              ],
            ),
          ),
        )),
      );
    });
  }
}
