// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tfk_dating/pages/loginPage.dart';
import 'package:tfk_dating/pages/new.dart';
import 'package:tfk_dating/pages/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(), //Login(),

      routes: {
        '/secondPage': (context) => SecondPage(),
        '/EndPage': (context) => NothingToSwipe(),
      },
    );
  }
}
