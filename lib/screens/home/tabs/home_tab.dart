import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/bloc/home/home_tab/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/screens/home/components/brands_component.dart';
import 'package:zumarada/screens/home/components/product_component.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return BlocConsumer<HomeTabBloc, HomeTabStates>(
        listener: (context, stat) {},
        builder: (context, stat) {
          return SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              height: height * 0.40,
                              child: PageView.builder(
                                controller:
                                    HomeTabBloc.get(context).pageController,
                                itemCount: 4,
                                itemBuilder: (context, index) => Container(
                                  child: Image.network(
                                    'https://image.freepik.com/free-psd/beauty-care-cosmetic-product-mock-up_23-2148891586.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                        ),
                        Padding(
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Brands',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Spacer(),
                        Text(
                          'View all',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 90,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: HomeTabBloc.get(context).brands.length,
                            itemBuilder: (context, index) => BrandComponent(
                                brand: HomeTabBloc.get(context).brands[index])),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'New Arrivals',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'View all',
                              style: Theme.of(context).textTheme.caption,
                            )),
                      ],
                    ),
                    Container(
                        height: 291,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: HomeTabBloc.get(context).products.length,
                            itemBuilder: (context, index) => ProductComponent(
                                  product:
                                      HomeTabBloc.get(context).products[index],
                                  favoritonTab: () {
                                    HomeTabBloc.get(context).buttemFavorit();
                                  },
                                ))),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Lip Collection',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'View all',
                              style: Theme.of(context).textTheme.caption,
                            )),
                      ],
                    ),
                    Container(
                        height: 291,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: HomeTabBloc.get(context).products.length,
                            itemBuilder: (context, index) => ProductComponent(
                                  product:
                                      HomeTabBloc.get(context).products[index],
                                  favoritonTab: () {
                                    HomeTabBloc.get(context).buttemFavorit();
                                    print(index);
                                  },
                                ))),
                  ],
                ),
              ),
            )),
          );
        });
  }
}
