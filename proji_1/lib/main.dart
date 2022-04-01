import 'package:flutter/material.dart';
import 'LoginScreen_2.dart';
import'Register01.dart';
import 'LoginScreen_1.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen_1()
    );
  }
}

