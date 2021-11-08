import 'package:flutter/material.dart';

class CategoryInHomeWidget extends StatelessWidget {
  late final String imageCategory;
  late final String imageProduct1;
  late final String imageProduct2;
  late final String imageProduct3;
  CategoryInHomeWidget({
    required this.imageCategory,
    required this.imageProduct1,
    required this.imageProduct2,
    required this.imageProduct3,
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
                        'Eyse',
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
                    Container(color: Colors.grey[300], width: 90, height: 60),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 5),
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                color: Colors.white,
                                height: 60,
                                width: 85,
                              ),
                              Container(
                                child: Image.network(
                                  imageProduct1,
                                  fit: BoxFit.cover,
                                  width: 80,
                                  height: 55,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Mascara',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(color: Colors.grey[300], width: 90, height: 60),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                color: Colors.white,
                                height: 60,
                                width: 85,
                              ),
                              Container(
                                child: Image.network(
                                  imageProduct2,
                                  fit: BoxFit.cover,
                                  width: 80,
                                  height: 55,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Mascara',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(color: Colors.grey[300], width: 90, height: 60),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                color: Colors.white,
                                height: 60,
                                width: 85,
                              ),
                              Container(
                                child: Image.network(
                                  imageProduct3,
                                  fit: BoxFit.cover,
                                  width: 80,
                                  height: 55,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Mascara',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
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
