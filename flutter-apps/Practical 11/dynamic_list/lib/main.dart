// import 'package:dynamic_list/assignment1.dart';
// import 'package:dynamic_list/assignment2.dart';
import 'package:dynamic_list/assignment3.dart';
import 'package:flutter/material.dart';

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
      home: Assignment3(),
    );
  }
}
