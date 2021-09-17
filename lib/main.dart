import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/onboarding/bloc.dart';
import 'package:zumarada/bloc/signup/bloc.dart';
import 'package:zumarada/screens/home/home.dart';
import 'package:zumarada/screens/home/home_screen.dart';
import 'package:zumarada/screens/login/login_screen.dart';
import 'package:zumarada/screens/onboarding/onboarding_screen.dart';
import 'package:zumarada/screens/signup/signup_screen.dart';
import 'package:zumarada/screens/splash/splash_screen.dart';

import 'constants/my_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SCAFFOLD_BACKGROUND_COLOR,
    statusBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnBoardingBloc()),
        BlocProvider(create: (context) => SignUpBloc()),
      ],
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              elevation: 1,
              backgroundColor: Colors.white,
              selectedIconTheme: IconThemeData(color: BUTTON_COLOR)),
          primarySwatch: Colors.grey,
          platform: TargetPlatform.iOS,
          scaffoldBackgroundColor: SCAFFOLD_BACKGROUND_COLOR,
          appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: SCAFFOLD_BACKGROUND_COLOR,
              iconTheme: IconThemeData(
                color: BUTTON_COLOR,
              )),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontFamily: 'Sacramento',
              fontWeight: FontWeight.w600,
              fontSize: 60,
              color: DART_MAIN_COLOR,
            ),
            headline2: TextStyle(
              fontFamily: 'Pattaya',
              fontWeight: FontWeight.w300,
              fontSize: 40,
              color: BUTTON_COLOR,
            ),
            subtitle1: TextStyle(
              fontFamily: 'Glory',
              fontWeight: FontWeight.w600,
              fontSize: 34,
              color: DEEP_BLACK_COLOR,
            ),
            bodyText1: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 18,
              color: BLACK_COLOR,
            ),
            button: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: DEEP_BLACK_COLOR,
            ),
          ),
        ),
        initialRoute: 'SplashScreen',
        routes: {
          'SplashScreen': (context) => SplashScreen(),
          'OnBoardingScreen': (context) => OnBoardingScreen(),
          'LoginScreen': (context) => LoginScreen(),
          'SignUpScreen': (context) => SignupScreen(),
          'Home': (context) => Home(),
        },
      ),
    );
  }
}
