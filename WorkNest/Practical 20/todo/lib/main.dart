import 'package:flutter/material.dart';
import 'todo.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

void main() async {
  runApp(const MainApp());

  database = openDatabase(
    join(await getDatabasesPath(), "todoDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        "CREATE TABLE Tasks(title TEXT, description TEXT, date DATE)",
      );
    },
  );
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
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(89, 57, 241, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Todo(),
    );
  }
}
