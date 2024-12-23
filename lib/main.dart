import 'package:flutter/material.dart';
import 'SplashScreenOne.dart';
import 'SplashScreenTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/splash2': (context) => SplashScreenTwo(),
      },
    );
  }
}
