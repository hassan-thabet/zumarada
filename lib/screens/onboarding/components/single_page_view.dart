import 'package:flutter/material.dart';

class SinglePageView extends StatelessWidget {
  late final String title, description;
  late final String? imagePath;

  SinglePageView(
      {required this.title, required this.description, this.imagePath});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          (imagePath != null)
              ? Image.asset(
                  imagePath!,
                   height: height * 0.3,
                   width: width ,
                )
              : Container(),

          SizedBox(
            height: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
