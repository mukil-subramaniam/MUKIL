//import 'package:TutFinder/homepage.dart';
import 'package:TutFinder/loginpage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Text(
          'TutFῐnder',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        nextScreen: MyLogin(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        duration: 4000,
      ),
    );
  }
}
