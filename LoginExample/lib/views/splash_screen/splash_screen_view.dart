import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    /*
    Bu kısımda logonun bir süre gözükmesini sağladım.
    Burada authenticate yada diğer işlemlerin yapılması gibi işlemler yapılabilir.
    */
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, '/sign_in');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: SvgPicture.asset('assets/logo.svg'),
      )),
    );
  }
}
