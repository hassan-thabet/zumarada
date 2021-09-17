import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/bloc.dart';
import 'package:zumarada/bloc/home/states.dart';

class HomeScreen extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: HomeBloc.get(context)
                .screensList[HomeBloc.get(context).currentTab],
            bottomNavigationBar: BottomNavigationBar(
                items: bottomNavBarItems,
                currentIndex: HomeBloc.get(context).currentTab,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  HomeBloc.get(context).changeIndex(index);
                }),
          );
        });
  }
}
