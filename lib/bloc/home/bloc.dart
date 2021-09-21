import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/states.dart';
import 'package:zumarada/screens/home/tabs/cart_tab.dart';
import 'package:zumarada/screens/home/tabs/favorite_tab.dart';
import 'package:zumarada/screens/home/tabs/home_tab.dart';
import 'package:zumarada/screens/home/tabs/profile_tab.dart';
import 'package:zumarada/screens/home/tabs/search_tab.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(HomeInitialStat());

  static HomeBloc get(context) => BlocProvider.of(context);

  int currentTab = 0;

  List<Widget> screensList = [
    HomeTab(),
    SearchTab(),
    CartTab(),
    FavoriteTab(),
    ProfileTab(),
  ];

  void changeIndex(int index) {
    currentTab = index;
    emit(TabBarChangeState());
  }
}
