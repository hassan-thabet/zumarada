import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/states.dart';
import 'package:zumarada/ui/screens/home_tabs/cart_tab.dart';
import 'package:zumarada/ui/screens/home_tabs/favorite_tab.dart';
import 'package:zumarada/ui/screens/home_tabs/home_tab.dart';
import 'package:zumarada/ui/screens/home_tabs/profile_tab.dart';
import 'package:zumarada/ui/screens/home_tabs/search_tab.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(HomeInitialStat());

  static HomeBloc get(context) => BlocProvider.of(context);

  int currentTab = 0;

  final List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border_sharp), label: 'Favorite'),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
  ];

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
