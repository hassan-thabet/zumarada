import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              clipBehavior: Clip.antiAlias,
              child: Card(
                elevation: 5,
                child: Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/4540077/pexels-photo-4540077.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
