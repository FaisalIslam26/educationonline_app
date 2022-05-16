import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1_app/screens/home.dart';
import 'package:test1_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
