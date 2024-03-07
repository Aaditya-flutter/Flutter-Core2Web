import 'package:flutter/material.dart';
import 'todo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(89, 57, 241, 1),
          primary: const Color.fromRGBO(89, 57, 241, 1),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Todo(),
    );
  }
}
