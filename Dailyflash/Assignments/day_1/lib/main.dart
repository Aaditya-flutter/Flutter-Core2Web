import 'package:flutter/material.dart';
// import 'assignment1.dart';
// import 'assignment2.dart';
// import 'assignment3.dart';
// import 'assignment4.dart';
import 'assignment5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Assignment1(),
      // home: Assignment2(),
      // home: Assignment3(),
      // home: Assignment4(),
      home: Assignment5(),
    );
  }
}
