import 'package:flutter/material.dart';
import 'package:zumarada/ui/components/build_favorites_section.dart';

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
        body: BuildFavoritesSection()
    );
  }
}
