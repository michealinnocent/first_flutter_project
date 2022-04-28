// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application/views/home.dart';
import 'package:flutter_application/views/loginPage.dart';
//import 'package:flutter_application/views/splash.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  return runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            splash:
            Icons.home,
            duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.blue,
            pageTransitionType: PageTransitionType.rightToLeftWithFade,
            animationDuration: Duration(seconds: 1),
            nextScreen: Home())),
  );
}
