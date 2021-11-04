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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Face',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
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
                                .copyWith(
                                    fontSize: 17, color: Colors.grey[700]),
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
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.grey[700],
                        ),
                        Text(
                          'Delete',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.4,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.grey[700],
                        ),
                        Text(
                          'Add To Card',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
