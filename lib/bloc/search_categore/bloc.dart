import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/search_categore/stats.dart';
import 'package:zumarada/models/product.dart';

class SearchCategoreBloc extends Cubit<SearchCategoreStats> {
  SearchCategoreBloc() : super(SearchCategoreInitialState());

  static SearchCategoreBloc get(context) => BlocProvider.of(context);

  List<Product> products = [];
    void getCategoryProducts() {
    FirebaseFirestore.instance.collection('products')
    .get()
    .then((value) {
      value.docs.forEach((element) {
        print(Product.fromJson(element.data()));
        products.add(Product.fromJson(element.data()));
      });

      print('products fetched successfully');
      emit((SearchCategoreGetProductsState()));
    });
  }
}
