import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/signup/states.dart';

class SignUpBloc extends Cubit<SignupStates> {
  SignUpBloc() : super(SignupInitialState());

  static SignUpBloc get(context) => BlocProvider.of(context);

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordSecure = true;

  void changVisibilityState() {
    passwordSecure = !passwordSecure;
    emit((SignupVisibility()));
  }
}
