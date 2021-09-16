import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/login/bloc.dart';
import 'package:zumarada/bloc/login/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/screens/signup/components/custom_button.dart';
import 'package:zumarada/screens/signup/components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Log in',
                          style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Email',
                    isSecure: false,
                    controller: LoginBloc.get(context).emailController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.visiblePassword,
                    hint: 'Password',
                    isSecure: LoginBloc.get(context).passwordSecure,
                    controller: LoginBloc.get(context).passwordController,
                    suffixIconData:
                        LoginBloc.get(context).passwordSecure == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                    visibilityOnTap:
                        LoginBloc.get(context).changVisibilityState,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Create account',
                    width: double.infinity,
                    onTap: () {},
                    color: BUTTON_COLOR,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
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
                          Navigator.pushNamed(context, 'SignUpScreen');
                        },
                        child: Text(
                          'Singup',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: BUTTON_COLOR),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
