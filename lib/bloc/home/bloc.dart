import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/states.dart';
import 'package:zumarada/screens/home/bage.dart';
import 'package:zumarada/screens/home/favorite.dart';
import 'package:zumarada/screens/home/home_screen.dart';
import 'package:zumarada/screens/home/profail.dart';
import 'package:zumarada/screens/home/sersh.dart';

class HomeBloc extends Cubit<HomStates> {
  HomeBloc() : super(HomeInitialStat());
  static HomeBloc get(context) => BlocProvider.of(context);
  int tapIndx = 0;

// ignore: unused_field
  List<Widget> kScreen = [
    HomeScreen(),
    Sersh(),
    Bage(),
    Favorite(),
    Profail(),
  ];

  // ignore: non_constant_identifier_names
  void BNBar(int index) {
    tapIndx = index;
    emit(BottomNavigonBarStat());
  }
}
