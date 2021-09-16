import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home screen',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
