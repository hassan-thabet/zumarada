import 'package:flutter/material.dart';
import 'package:zumarada/bloc/onboarding/onboarding_bloc.dart';
import 'package:zumarada/ui/widgets/onboarding_content_widget.dart';

class BuildOnBoardingContentSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.90,
      child: PageView(
        controller: OnBoardingBloc.get(context).controller,
        onPageChanged: (index) {
          OnBoardingBloc.get(context).onPageChange(index);
        },
        children: <Widget>[
          OnBoardingContentWidget(
            title: 'OnBoarding first title',
            description:
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form,',
            imagePath: 'assets/images/on3.png',
          ),
          OnBoardingContentWidget(
            title: 'OnBoarding second title',
            description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
            imagePath: 'assets/images/on3.png',
          ),
          OnBoardingContentWidget(
            title: 'OnBoarding Third title',
            description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
            imagePath: 'assets/images/on3.png',
          ),
        ],
      ),
    );
  }
}
