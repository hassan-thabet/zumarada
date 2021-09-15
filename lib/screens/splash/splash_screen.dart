import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'OnBoardingScreen');
      }
    );


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
