// Create an AppBar, add a title and add any 2 icons at the end of the appbar and give color to the AppBar.

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My App Bar",
        ),
        actions: const [
          Icon(
            Icons.home,
          ),
          Icon(
            Icons.menu,
          ),
        ],
        backgroundColor: Colors.brown,
      ),
    );
  }
}