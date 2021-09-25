import 'package:flutter/material.dart';
import 'package:zumarada/screens/home/components/favorit_component.dart';

class FavoriteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'FAVORITES',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => FavoritCompont(),
        ));
  }
}
// 'https://www.leylekkapida.com/Uploads/UrunResimleri/buyuk/bionike-defence-hydractive-mat-etkili--10-836.jpg'
// 'A silkylightweight matte moisturizer, '
