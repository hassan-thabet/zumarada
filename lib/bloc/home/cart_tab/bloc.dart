
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/cart_tab/states.dart';

class CartTabBloc extends Cubit<CartTabStates> {
  CartTabBloc() : super(CartTabInitialState());

  static CartTabBloc get(context) => BlocProvider.of(context);


  int count = 1;

  void increment()
  {
    count++;
    print(count);
    emit(CartTabIncrementState());
  }

  void decrement()
  {
    count--;
    print(count);
    emit(CartTabDecrementState());
  }
}
