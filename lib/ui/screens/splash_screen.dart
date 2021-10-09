import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, 'OnBoardingScreen');
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
