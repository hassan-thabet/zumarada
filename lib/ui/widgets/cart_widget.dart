import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

import 'custom_button_widget.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(
            height: 9,
            thickness: 2,
            color: BUTTON_COLOR,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Total amount:',
                  style: Theme.of(context).textTheme.button,
                ),
                Spacer(),
                Text('200 EG',
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Spacer(),
          CustomButtonWidget(
            onTap: () {},
            text: 'Chikout',
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
