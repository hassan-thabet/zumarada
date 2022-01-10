import 'package:flutter/material.dart';
import 'package:zumarada/constants/my_colors.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              MaterialButton(
                onPressed: () => heroScreenPage(context),
                child: Hero(
                  tag: 'hero Profile',
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/388517/pexels-photo-388517.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    backgroundColor: LIGHT_MAIN_COLOR,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'jasmin total',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'jasmin@gmail.com',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text('My Address',
                    style: Theme.of(context).textTheme.button),
                leading: Icon(Icons.location_history),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
              Container(
                height: 0.3,
                color: Colors.grey,
              ),
              ListTile(
                title:
                    Text('Account', style: Theme.of(context).textTheme.button),
                leading: Icon(Icons.person),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
              Container(
                height: 0.3,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Notifications',
                    style: Theme.of(context).textTheme.button),
                leading: Icon(Icons.notifications),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
              Container(
                height: 0.3,
                color: Colors.grey,
              ),
              ListTile(
                title:
                    Text('Devices', style: Theme.of(context).textTheme.button),
                leading: Icon(Icons.mobile_friendly),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
              Container(
                height: 0.3,
                color: Colors.grey,
              ),
              ListTile(
                title:
                    Text('Language', style: Theme.of(context).textTheme.button),
                leading: Icon(Icons.language),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void heroScreenPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Scaffold(
                body: Center(
                    child: Hero(
              tag: 'hero Profile',
              child: Image.network(
                  'https://images.pexels.com/photos/388517/pexels-photo-388517.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
            )))));
  }
}
