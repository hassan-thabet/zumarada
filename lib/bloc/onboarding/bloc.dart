import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/onboarding/states.dart';

class OnBoardingBloc extends Cubit<OnBoardingStates>
{
  OnBoardingBloc() : super (OnBoardingInitialState());
  static OnBoardingBloc get (context) => BlocProvider.of(context);

  int pageIndex = 0;
  PageController controller = new PageController();

  void onPageChange(index)
  {
    controller.animateToPage(index, duration: Duration(milliseconds: 100), curve: Curves.decelerate);
    pageIndex = index ;
    emit((OnBoardingChangePageState()));
  }
  void nextPageChange(index)
  {
    controller.animateToPage(index+1, duration: Duration(milliseconds: 100), curve: Curves.decelerate);
    pageIndex = index ;
    emit((OnBoardingChangePageState()));
  }


}