import 'package:flutter/material.dart';

class CategoryInHomeWidget extends StatelessWidget {
  late final String imageCategory;
  late final String imageProduct1;
  late final String imageProduct2;
  late final String imageProduct3;
  late final String nameCategory;
  late final String nameProduct1;
  late final String nameProduct2;
  late final String nameProduct3;
  CategoryInHomeWidget({
    required this.imageCategory,
    required this.imageProduct1,
    required this.imageProduct2,
    required this.imageProduct3,
    required this.nameCategory,
    required this.nameProduct1,
    required this.nameProduct2,
    required this.nameProduct3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        alignment: AlignmentDirectional.center,
        // height: 300,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                      color: Colors.grey[300], width: 280, height: 120),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            color: Colors.white,
                            height: 130,
                            width: 250,
                          ),
                          Container(
                            child: Image.network(
                              imageCategory,
                              fit: BoxFit.cover,
                              width: 244,
                              height: 124,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        nameCategory,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(color: Colors.grey[300], width: 75, height: 60),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child:  Container(
                                child: Image.asset(
                                   imageProduct1,
                                  fit: BoxFit.cover,
                                   width: 70,
                                  height: 80,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          child: Text(
                            nameProduct1,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(fontSize: 20),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(color: Colors.grey[300], width: 75, height: 60),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child: Image.asset(
                                  imageProduct2,
                                  fit: BoxFit.cover,
                                  width: 70,
                                  height: 80,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          nameProduct2,
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              ?.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(color: Colors.grey[300], width: 75, height: 60),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child: Image.asset(
                                  imageProduct3,
                                  fit: BoxFit.cover,
                                  width: 70,
                                  height: 80,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          child: Text(
                            nameProduct3,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
