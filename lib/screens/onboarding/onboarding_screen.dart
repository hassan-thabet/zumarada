import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/onboarding/bloc.dart';
import 'package:zumarada/bloc/onboarding/states.dart';
import 'package:zumarada/screens/onboarding/components/indicator.dart';
import 'package:zumarada/screens/onboarding/components/single_page_view.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<OnBoardingBloc, OnBoardingStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                height: size.height * 0.90,
                child: PageView(
                  controller: OnBoardingBloc.get(context).controller,
                  onPageChanged: (index) {
                    OnBoardingBloc.get(context).onPageChange(index);
                  },
                  children: <Widget>[
                    SinglePageView(
                      title: 'OnBoarding first title',
                      description:
                          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form,',
                      imagePath: 'assets/images/on3.png',
                    ),
                    SinglePageView(
                      title: 'OnBoarding second title',
                      description:
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
                      imagePath: 'assets/images/on3.png',
                    ),
                    SinglePageView(
                      title: 'OnBoarding Third title',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      imagePath: 'assets/images/on3.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  height: size.height * 0.10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Indicator(
                                (OnBoardingBloc.get(context).pageIndex == 0)
                                    ? true
                                    : false),
                            Indicator(
                                (OnBoardingBloc.get(context).pageIndex == 1)
                                    ? true
                                    : false),
                            Indicator(
                                (OnBoardingBloc.get(context).pageIndex == 2)
                                    ? true
                                    : false),
                          ],
                        ),
                      ),
                      (OnBoardingBloc.get(context).pageIndex == 2)
                          ? InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('DONE',
                                    style: Theme.of(context).textTheme.button),
                              ),
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, 'HomeScreen');
                              })
                          : InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('NEXT',
                                    style: Theme.of(context).textTheme.button),
                              ),
                              onTap: () {
                                OnBoardingBloc.get(context).nextPageChange(
                                    OnBoardingBloc.get(context).pageIndex);
                              },
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
