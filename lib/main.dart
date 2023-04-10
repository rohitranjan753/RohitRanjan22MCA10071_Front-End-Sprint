import 'package:flutter/material.dart';
import 'package:rohit_frontendsprintmca/DashboardScreen.dart';
import 'package:rohit_frontendsprintmca/OnBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'formulaFont',
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: OnBorading())
    ;
  }
}
