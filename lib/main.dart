import 'package:flutter/material.dart';

import 'package:lms/View/splash_screen/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}