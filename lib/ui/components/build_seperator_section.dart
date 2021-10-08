import 'package:flutter/material.dart';

class BuildSeperatorSection extends StatelessWidget {
  late final String title;
  late final VoidCallback onPressed;

  BuildSeperatorSection({required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
          Spacer(),
          TextButton(
              onPressed: onPressed,
              child: Text(
                'View all',
                style: Theme.of(context).textTheme.caption,
              ))
        ],
      ),
    );
  }
}
