import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Core@Web"),
        ),
        body: const Center(
          child: Text("Core2Web"),
        ),
      ),
    );
  }
}