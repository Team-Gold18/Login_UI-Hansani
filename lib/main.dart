import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'pages/login.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/logo.jpg',
          width: 1000,
          height: 1000,
        ),
        nextScreen:Login(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.white,
        duration: 6000,
      ),

    );
  }
}
