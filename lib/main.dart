import 'package:retrofit/screen/home_screen.dart';
import 'package:retrofit/screen/signin_screen.dart';
import 'package:retrofit/screen/signup_screen.dart';
import 'package:retrofit/utils/routes.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: AppTheme.of(context),
      routes: {
        Routes.homeScreen: (BuildContext context) => HomeScreen(),
        Routes.signInScreen: (BuildContext context) => SignInScreen(),
        Routes.signUpScreen: (BuildContext context) => SignUpScreen(),
      },
    );
  }
}
