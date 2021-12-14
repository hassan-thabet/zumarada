import 'package:flutter/material.dart';
import 'package:zumarada/ui/components/build_categoryAyseInSaerch_section.dart';
import 'package:zumarada/ui/components/build_categoryBrushInSaerch_section.dart';
import 'package:zumarada/ui/components/build_categoryFaceInSaerch_section.dart';
import 'package:zumarada/ui/components/build_categoryLipsInSaerch_section.dart';
import 'package:zumarada/ui/components/build_categoryToolsInSaerch_section.dart';
import 'package:zumarada/ui/components/build_search_section.dart';


class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SEARCH',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildSearchSection(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Search by category',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 20,
            ),
            BuildCategoryBrushInSaerchSection(),
            SizedBox(
              height: 15,
            ),
            BuildCategoryAyseInSaerchSection(),
            SizedBox(
              height: 15,
            ),
            BuildCategoryToolsInSaerchSection(),
            SizedBox(
              height: 15,
            ),
            BuildCategoryFaceInSaerchSection(),
            SizedBox(
              height: 15,
            ),
            BuildCategoryLipsInSaerchSection(),
          ],
        ),
      ),
    );
  }
}
