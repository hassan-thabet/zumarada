import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/bloc.dart';
import 'package:zumarada/bloc/home/states.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: HomeBloc.get(context)
                .screensList[HomeBloc.get(context).currentTab],
            bottomNavigationBar: BottomNavigationBar(
                items: HomeBloc.get(context).bottomNavBarItems,
                currentIndex: HomeBloc.get(context).currentTab,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  HomeBloc.get(context).changeIndex(index);
                }),
          );
        });
  }
}
