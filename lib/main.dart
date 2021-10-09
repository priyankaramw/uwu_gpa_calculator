import 'package:flutter/material.dart';
import 'package:uwu_gpa_calculator/screens/home.dart';
import 'package:uwu_gpa_calculator/screens/semester.dart';
import 'package:uwu_gpa_calculator/screens/testing_2.dart';
import 'package:uwu_gpa_calculator/screens/testings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UWU GPA Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'HelveticaNeue',
      ),

      // latoTextTheme(
      //   Theme.of(context).textTheme,
      // ),

      initialRoute: '/home',
      routes: {
        '/semester': (context) => const Semester(),
        '/home': (context) => const Home(),
        '/testing': (context) => const Testing(),
        '/testing2': (context) => const TestingTwo(),
      },
    );
  }
}
