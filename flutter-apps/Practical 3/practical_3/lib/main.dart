import 'package:flutter/material.dart';
// import 'package:practical_3/assignment1.dart';
import 'package:practical_3/assignment2.dart';

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
      home: Assignment2(),
    );
  }
}
