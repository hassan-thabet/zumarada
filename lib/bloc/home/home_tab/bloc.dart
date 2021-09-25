import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/home_tab/states.dart';
import 'package:zumarada/models/brand.dart';
import 'package:zumarada/models/product.dart';

class HomeTabBloc extends Cubit<HomeTabStates> {
  HomeTabBloc() : super(HomeTabInitialState());

  static HomeTabBloc get(context) => BlocProvider.of(context);

  var pageController = PageController();
  bool buttemfavorit = true;

  List<Brand> brands = [];
  List<Product> products = [];
  Map<int, bool> favorits = {};

  void getBrands() {
    FirebaseFirestore.instance.collection('brands').get().then((value) {
      value.docs.forEach((element) {
        brands.add(Brand.fromJson(element.data()));
      });
      print('brands fetched successfully');
      emit((HomeTabGetBrandsState()));
    });
  }

  void buttemFavorit() {
    buttemfavorit = !buttemfavorit;

    emit(HomeTabButtemFavorit());
  }

  void getProducts() {
    FirebaseFirestore.instance.collection('products').get().then((value) {
      value.docs.forEach((element) {
        products.add(Product.fromJson(element.data()));
      });
      print('products fetched successfully');

      emit((HomeTabGetProductsState()));
    });
  }
}
