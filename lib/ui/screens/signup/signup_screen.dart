import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/signup/bloc.dart';
import 'package:zumarada/bloc/signup/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/screens/signup/components/custom_text_field.dart';

import 'components/custom_button.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignupStates>(
      listener: (context, state) {
        if (state is SignupWithGoogleSuccess) {
          Navigator.pushReplacementNamed(context, 'HomeScreen');
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'LoginScreen');
                },
                icon: Icon(Icons.arrow_back)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Sign up',
                        style: Theme.of(context).textTheme.headline2),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: 'First Name',
                  isSecure: false,
                  controller: SignUpBloc.get(context).firstNameController,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: 'Last Name',
                  isSecure: false,
                  controller: SignUpBloc.get(context).lastNameController,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.emailAddress,
                  hint: 'Email',
                  isSecure: false,
                  controller: SignUpBloc.get(context).emailController,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.visiblePassword,
                  suffixIconData: SignUpBloc.get(context).passwordSecure == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                  visibilityOnTap: () {
                    SignUpBloc.get(context).changVisibilityState();
                  },
                  hint: 'Password',
                  isSecure: SignUpBloc.get(context).passwordSecure,
                  controller: SignUpBloc.get(context).passwordController,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Create account',
                  width: double.infinity,
                  onTap: () {},
                  color: BUTTON_COLOR,
                ),
                Row(children: [
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    height: 36,
                  )),
                  Text(
                    ' Or sign up with ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 16),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    height: 36,
                  )),
                ]),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Connect with Google',
                  width: double.infinity,
                  onTap: () {
                    SignUpBloc.get(context).signInWithGoogle();
                  },
                  color: Colors.redAccent,
                ),
                SizedBox(height: 6),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: Theme.of(context).textTheme.button,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'LoginScreen');
                      },
                      child: Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: BUTTON_COLOR),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        );
      },
    );
  }
}
