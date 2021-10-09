import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/signup/bloc.dart';
import 'package:zumarada/bloc/signup/states.dart';
import 'package:zumarada/constants/my_colors.dart';
import 'package:zumarada/ui/widgets/custom_button_widget.dart';
import 'package:zumarada/ui/widgets/custom_textfield_widget.dart';


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
                CustomTextFieldWidget(
                  keyboardType: TextInputType.name,
                  hint: 'First Name',
                  isSecure: false,
                  controller: SignUpBloc.get(context).firstNameController,
                ),

                CustomTextFieldWidget(
                  keyboardType: TextInputType.name,
                  hint: 'Last Name',
                  isSecure: false,
                  controller: SignUpBloc.get(context).lastNameController,
                ),
                CustomTextFieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  hint: 'Email',
                  isSecure: false,
                  controller: SignUpBloc.get(context).emailController,
                ),
                CustomTextFieldWidget(
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
                CustomButtonWidget(text: 'Create account', onTap: (){}),
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
                CustomButtonWidget(text: 'Connect with Google', onTap: (){
                  SignUpBloc.get(context).signInWithGoogle();
                }),

                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: Theme.of(context).textTheme.button,
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
