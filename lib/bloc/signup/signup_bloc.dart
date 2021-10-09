import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zumarada/bloc/signup/signup_states.dart';

class SignUpBloc extends Cubit<SignupStates> {
  SignUpBloc() : super(SignupInitialState());

  static SignUpBloc get(context) => BlocProvider.of(context);

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordSecure = true;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void changVisibilityState() {
    passwordSecure = !passwordSecure;
    emit((SignupVisibility()));
  }

  void signInWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    await firebaseAuth.signInWithCredential(authCredential);
    emit((SignupWithGoogleSuccess()));
  }
}
