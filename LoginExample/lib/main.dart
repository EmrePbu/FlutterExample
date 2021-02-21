import 'package:LoginExample/views/create_account/create_account_view.dart';
import 'package:LoginExample/views/info/info_screen.dart';
import 'package:LoginExample/views/sign_in/sign_in_view.dart';
import 'package:LoginExample/views/splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0XFF7BED8D),
        accentColor: Color(0XFFBCF5C5),

        // Define the default font family.
        //fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black45,
          ),
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      title: 'FreshFood',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/sign_in': (context) => SignInScreen(),
        '/create_account': (context) => CreateAccountScreen(),
        '/info': (context) => InfoScreen(),
      },
    );
  }
}
