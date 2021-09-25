import 'package:flutter/material.dart';

class FavoritCompont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Card(
        child: Container(
          color: Colors.white,
          height: 130,
          width: double.infinity,
          child: Row(
            children: [
              Image.network(
                'https://www.leylekkapida.com/Uploads/UrunResimleri/buyuk/bionike-defence-hydractive-mat-etkili--10-836.jpg',
                width: 120,
                height: 120,
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
                      width: 200,
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
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '20 EGP',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          width: width * 0.3,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
