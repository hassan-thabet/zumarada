import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/bloc/home/home_tab/states.dart';
import 'package:zumarada/ui/components/build_bestsellers_section.dart';
import 'package:zumarada/ui/components/build_products_section.dart';
import 'package:zumarada/ui/components/build_seperator_section.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Column(
                    children: [
                      Container(
                          height: size.height / 6,
                          width: size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Color(0xffEEE0D7),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: size.height / 6,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Shop \nBy Brand'.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(fontSize: 24),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Color(0xffEEE0D7),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: size.height / 6,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Shop \nBy Category'.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(fontSize: 24),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          height: size.height / 6,
                          width: size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Color(0xffEEE0D7),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: size.height / 6,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Shop \nmost viewed'.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(fontSize: 24),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Color(0xffEEE0D7),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: size.height / 6,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Shop \nall offers'.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(fontSize: 24),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                //BuildSeperatorSection(title: 'Brands', onPressed: () {}),
                //BuildBrandsSection(),
                BuildSeperatorSection(title: 'New Arrivals', onPressed: () {}),
                BuildProductsSection(),
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
