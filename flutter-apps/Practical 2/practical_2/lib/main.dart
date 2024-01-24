import 'package:flutter/material.dart';
// import 'assignment1.dart';
// import 'assignment2.dart';
import 'assignment3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Assignment1(),
      // home: Assignment2(),
      home: Assignment3(),
    );
  }
}