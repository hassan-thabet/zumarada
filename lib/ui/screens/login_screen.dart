import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/login/login_bloc.dart';
import 'package:zumarada/bloc/login/login_states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/widgets/custom_button_widget.dart';
import 'package:zumarada/ui/widgets/custom_textfield_widget.dart';

class LoginScreen extends StatelessWidget {
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
                  CustomTextFieldWidget(
                      hint: 'E-mail',
                      keyboardType: TextInputType.emailAddress,
                      controller: LoginBloc.get(context).emailController,
                      isSecure: false),
                  CustomTextFieldWidget(
                    hint: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    controller: LoginBloc.get(context).passwordController,
                    isSecure: LoginBloc.get(context).passwordSecure,
                    suffixIconData:
                        LoginBloc.get(context).passwordSecure == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                    visibilityOnTap:
                        LoginBloc.get(context).changVisibilityState,
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
                  CustomButtonWidget(text: 'Create account', onTap: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
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
                          'Sign Up',
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
      ),
    );
  }
}
