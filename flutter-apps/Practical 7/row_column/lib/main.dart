import 'package:flutter/material.dart';
// import 'package:row_column/assignment1.dart';
import 'package:row_column/assignment2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Assignment1(),
      home: Assignment2(),
    );
  }
}
