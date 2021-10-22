import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zumarada/bloc/home/home_tab/bloc.dart';
import 'package:zumarada/bloc/home/home_tab/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/widgets/bestsellers_page_widget.dart';

class BuildBestSellersSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Container(
              decoration: BoxDecoration(),
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              height: size.height / 3,
              child: PageView(
                controller: HomeTabBloc.get(context).pageController,
                children: [
                  BestSellersPageWidget(
                      imageLink:
                          'https://dr2consultants.cn/wp-content/uploads/2020/08/cbd-exploding-cosmetics-industry-does-it-make-difference-762x400.jpeg'),
                  BestSellersPageWidget(
                      imageLink:
                          'https://images.unsplash.com/photo-1576426863848-c21f53c60b19?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80'),
                  BestSellersPageWidget(
                      imageLink:
                          'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=887&q=80'),
                  BestSellersPageWidget(
                      imageLink:
                          'https://images.unsplash.com/photo-1515688594390-b649af70d282?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=806&q=80'),
                ],
              )),
        ),
        BlocBuilder<HomeTabBloc, HomeTabStates>(builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Spacer(),
                SmoothPageIndicator(
                  controller: HomeTabBloc.get(context).pageController,
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
    );
  }
}
