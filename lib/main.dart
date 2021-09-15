import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/onboarding/bloc.dart';
import 'package:zumarada/screens/splash/splash_screen.dart';

import 'constants/my_colors.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SCAFFOLD_BACKGROUND_COLOR,
    statusBarIconBrightness : Brightness.dark,
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
      ],
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          scaffoldBackgroundColor: SCAFFOLD_BACKGROUND_COLOR,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontFamily: 'Sacramento',
              fontWeight: FontWeight.w600,
              fontSize: 60,
              color: DART_MAIN_COLOR,
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
              // fontSize: 18,
              color: DEEP_BLACK_COLOR,
            ),

          ),
        ),
      ),
    );
  }
}
