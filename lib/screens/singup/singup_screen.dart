import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/sing_up/sing_up_stats.dart';

import 'package:zumarada/screens/onboarding/components/myBootom.dart';
import 'package:zumarada/screens/onboarding/components/myTextFaild.dart';

class SingupScreen extends StatelessWidget {
  var controlrFarstName = TextEditingController();
  var controlrlasttName = TextEditingController();
  var controlremail = TextEditingController();
  var controlrpaswoord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: SCAFFOLD_BACKGROUND_COLOR,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'LoginScreen');
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Sing up', style: Theme.of(context).textTheme.headline2),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(
              keyboardType: TextInputType.name,
              hint: 'Farst Name',
              isSecure: false,
              controller: controlrFarstName,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              keyboardType: TextInputType.name,
              hint: 'Last Name',
              isSecure: false,
              controller: controlrlasttName,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Email',
              isSecure: false,
              controller: controlremail,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              keyboardType: TextInputType.visiblePassword,
              suffixIconData: Icons.visibility,
              visibilityOnTap: () {},
              hint: 'Paswoord',
              isSecure: true,
              controller: controlrpaswoord,
            ),
            SizedBox(
              height: 20,
            ),
            MyBoootom(
              text: 'create account',
              width: 250,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
