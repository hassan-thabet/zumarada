import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/login/login_states.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc() : super(LoginInitialState());
  static LoginBloc get(context) => BlocProvider.of(context);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordSecure = true;

  void changVisibilityState() {
    passwordSecure = !passwordSecure;
    emit((LoginVisibility()));
  }
}
