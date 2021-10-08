import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/bloc/home/home_tab/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/components/build_brands_section.dart';
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
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Container(
                          decoration: BoxDecoration(),
                          clipBehavior: Clip.antiAlias,
                          width: double.infinity,
                          height: size.height * 0.40,
                          child: PageView.builder(
                            controller: HomeTabBloc.get(context).pageController,
                            itemCount: 4,
                            itemBuilder: (context, index) => Container(
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    width: size.width,
                                    child: Image.network(
                                      'https://image.freepik.com/free-psd/beauty-care-cosmetic-product-mock-up_23-2148891586.jpg',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, bottom: 10),
                                      child: Container(
                                        width: 190,
                                        child: Text('The Prodcte The Good',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3!
                                                .copyWith(
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    BlocBuilder<HomeTabBloc, HomeTabStates>(
                        builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Spacer(),
                            SmoothPageIndicator(
                              controller:
                                  HomeTabBloc.get(context).pageController,
                              count: 4,
                              effect: ScrollingDotsEffect(
                                  dotHeight: 7,
                                  dotWidth: 7,
                                  dotColor: SCAFFOLD_BACKGROUND_COLOR,
                                  activeDotColor: BUTTON_COLOR),
                            ),
                          ],
                        ),
                      );
                    })
                  ],
                ),
                BuildSeperatorSection(title: 'Brands', onPressed: () {}),
                BuildBrandsSection(),
                BuildSeperatorSection(title: 'New Arrivals', onPressed: () {}),
                BuildProductsSection(),
                BuildSeperatorSection(title: 'Lip Collection', onPressed: () {}),
                BuildProductsSection(),
              ],
            ),
          ),
        )),
      );
    });
  }
}
