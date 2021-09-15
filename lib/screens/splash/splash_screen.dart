import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zumarada/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });


    return Scaffold(
      body: Center(
        child: Text(
            'Zumarada',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
