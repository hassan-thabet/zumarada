// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zumarada/bloc/homeBloc/bloc.dart';
import 'package:zumarada/bloc/homeBloc/stats.dart';
import 'package:zumarada/constants/my_colors.dart';

class HomeTab extends StatelessWidget {
  List<Image> Brande = [
    Image.network(
        'https://www.marketing91.com/wp-content/uploads/2019/06/Most-Expensive-Make-up-Brand-1.jpg'),
    Image.network(
        'https://www.marketing91.com/wp-content/uploads/2019/06/Most-Expensive-Make-up-Brand-1.jpg'),
    Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhsFSofFE7TVodQMx2Ed8C3jyUVuNNM2JDTA&usqp=CAU'),
    Image.network(
        'https://cdn2.stylecraze.com/wp-content/uploads/2012/07/NYX-Cosmetics.jpg'),
    Image.network(
        'https://cdn2.stylecraze.com/wp-content/uploads/2012/07/NYX-Cosmetics.jpg'),
    Image.network(
        'https://cdn2.stylecraze.com/wp-content/uploads/2012/07/NYX-Cosmetics.jpg'),
  ];
  List<String> TextBrande = [
    'NYX',
    'MAC',
    'LOreal',
    'Tartae',
    'NYX',
    'MAC',
  ];
  double s3r = 23.0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;

    return BlocConsumer<HomeTabBloc, HomeTabStats>(
        listener: (context, stat) {},
        builder: (context, stat) {
          return Scaffold(
              body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                            decoration: BoxDecoration(),
                            clipBehavior: Clip.antiAlias,
                            width: double.infinity,
                            height: hight * 0.40,
                            child: PageView.builder(
                              controller: HomeTabBloc.get(context).bagControlar,
                              itemCount: 4,
                              itemBuilder: (context, index) => Image.network(
                                  'https://image.freepik.com/free-psd/beauty-care-cosmetic-product-mock-up_23-2148891586.jpg'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Spacer(),
                            SmoothPageIndicator(
                              controller: HomeTabBloc.get(context).bagControlar,
                              count: 4,
                              effect: ScrollingDotsEffect(
                                  dotHeight: 7,
                                  dotWidth: 7,
                                  dotColor: SCAFFOLD_BACKGROUND_COLOR,
                                  activeDotColor: BUTTON_COLOR),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Brandes',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Brande.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: Brande[index].image,
                              ),
                            ),
                            Text(TextBrande[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'New Arrivals',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context).textTheme.caption,
                          )),
                    ],
                  ),
                  Container(
                      height: 275,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  color: Colors.white70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://image.freepik.com/free-photo/arrangement-with-make-up-container_23-2149030340.jpg',
                                        height: 170,
                                        width: 170,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Harily Babie',
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Matte Lip stick',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Lg$s3r',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption,
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon:
                                                    Icon(Icons.favorite_border))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Lip Collection',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context).textTheme.caption,
                          )),
                    ],
                  ),
                  Container(
                      height: 275,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  color: Colors.white70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://image.freepik.com/free-photo/arrangement-with-make-up-container_23-2149030340.jpg',
                                        height: 170,
                                        width: 170,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Harily Babie',
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Matte Lip stick',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Lg$s3r',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption,
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon:
                                                    Icon(Icons.favorite_border))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))),
                ],
              ),
            ),
          ));
        });
  }
}