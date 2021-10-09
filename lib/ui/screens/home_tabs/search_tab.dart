import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/components/build_search_section.dart';

import '../category_screen.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SEARCH',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildSearchSection(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Search by category',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: DART_MAIN_COLOR,
                    child: Image.asset(
                      'assets/icons/brush.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'BRUSH',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: LIGHT_MAIN_COLOR,
                    child: Image.asset(
                      'assets/icons/lips.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'LIPS',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: DART_MAIN_COLOR,
                    child: Image.asset(
                      'assets/icons/eyes.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'EYES',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () 
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: LIGHT_MAIN_COLOR,
                    child: Image.asset(
                      'assets/icons/face.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'FACE',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: DART_MAIN_COLOR,
                    child: Image.asset(
                      'assets/icons/tools.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'TOOLS',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
