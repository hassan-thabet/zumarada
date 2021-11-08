import 'package:flutter/material.dart';

class AdvertisingWindowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: Image.network(
        'https://i0.wp.com/superkosmetolog.ru/wp-content/uploads/2015/01/6.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
