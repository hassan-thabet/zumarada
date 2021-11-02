import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Card(
        child: Container(
          color: Colors.white,
          height: 180,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    'https://www.leylekkapida.com/Uploads/UrunResimleri/buyuk/bionike-defence-hydractive-mat-etkili--10-836.jpg',
                    width: 90,
                    height: 90,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 251,
                          child: Text(
                            'A silkylightweight matte moisturizerdcjbjlsfhvjl ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Spacer(),
                        Row(
                          children: [
                            Text(
                              '20 EGP',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: width * 0.6,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.grey,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
