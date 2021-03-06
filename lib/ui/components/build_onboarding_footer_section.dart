import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/onboarding/onboarding_bloc.dart';
import 'package:zumarada/bloc/onboarding/onboarding_states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/widgets/onboarding_indicator_widget.dart';

class BuildOnBoardingFooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<OnBoardingBloc, OnBoardingStates>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: size.height * 0.10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (OnBoardingBloc.get(context).pageIndex == 0)
                  ? InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SKIP',
                            style: Theme.of(context).textTheme.button),
                      ),
                      onTap: () {
                        OnBoardingBloc.get(context).onPageChange(2);
                      })
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('SKIP',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: SCAFFOLD_BACKGROUND_COLOR))),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    OnBoardingIndicatorWidget(
                        (OnBoardingBloc.get(context).pageIndex == 0)
                            ? true
                            : false),
                    OnBoardingIndicatorWidget(
                        (OnBoardingBloc.get(context).pageIndex == 1)
                            ? true
                            : false),
                    OnBoardingIndicatorWidget(
                        (OnBoardingBloc.get(context).pageIndex == 2)
                            ? true
                            : false),
                  ],
                ),
              ),
              Spacer(),
              (OnBoardingBloc.get(context).pageIndex == 2)
                  ? InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('DONE',
                            style: Theme.of(context).textTheme.button),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'HomeScreen');
                      })
                  : InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'NEXT',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      onTap: () {
                        OnBoardingBloc.get(context).nextPageChange(
                            OnBoardingBloc.get(context).pageIndex);
                      },
                    )
            ],
          ),
        ),
      );
    });
  }
}
