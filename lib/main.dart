import 'package:final_project/pages/about.dart';
import 'package:final_project/pages/home.dart';
import 'package:final_project/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drinks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        '/home' : (BuildContext context) => HomePage(),
        '/about' : (BuildContext context) => AboutPage(),
      },
    );
  }
}

