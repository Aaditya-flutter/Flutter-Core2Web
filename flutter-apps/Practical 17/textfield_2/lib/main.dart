import 'package:flutter/material.dart';
import 'package:textfield_2/lifecycle.dart';
import 'dreamcompany.dart';
// import 'dart:io';

// Future magic() async {
//   for (var i = 0; thisScreen == true; i++) {
//     sleep(const Duration(milliseconds: 500));
//   }
//   await magic();
//   runApp(const MainApp());
// }

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (thisScreen) ? const LifeCycleWidget() : const DreamCompany(),
    );
  }
}
