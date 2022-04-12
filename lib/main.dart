import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second_Screen.dart';
import 'first_Screen.dart';
import 'third_Screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First_Screen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => First_Screen(),
      //   '/second ': (context) => SecondScreen(),
      // },
    );
  }
}

