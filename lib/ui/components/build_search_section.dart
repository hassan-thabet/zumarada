
import 'package:flutter/material.dart';
class BuildSearchSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle:
            Theme.of(context).textTheme.caption!.copyWith(fontSize: 17),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
