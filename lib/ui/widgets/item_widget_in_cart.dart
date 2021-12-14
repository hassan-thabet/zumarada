import 'package:flutter/material.dart';

class ItemWidgetInCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    'https://www.leylekkapida.com/Uploads/UrunResimleri/buyuk/bionike-defence-hydractive-mat-etkili--10-836.jpg',
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'sstdkfjkl  ',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 20, color: Colors.grey[900]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'vnusdko thwa fdjidk ghoea; idkckajfi ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Remove',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.red, fontSize: 14),
                          )),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.plus_one_outlined))
                              ],
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
      ),
    );
  }
}
