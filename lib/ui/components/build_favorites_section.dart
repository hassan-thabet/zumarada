import 'package:flutter/material.dart';
import 'package:zumarada/ui/widgets/favorite_widget.dart';

class BuildFavoritesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => FavoriteWidget(),
    );
  }
}
