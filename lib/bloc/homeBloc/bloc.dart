import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/homeBloc/stats.dart';

class HomeTabBloc extends Cubit<HomeTabStats> {
  HomeTabBloc() : super(HomeTabInitialState());
  static HomeTabBloc get(context) => BlocProvider.of(context);

  var bagControlar = PageController();
}
