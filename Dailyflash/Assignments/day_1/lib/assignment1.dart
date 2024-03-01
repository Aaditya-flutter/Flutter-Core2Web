// Create an AppBar, give an icon at the appbar, give a title in the middle, and at the end add an Icon.

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "App Bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            size: 35,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.red,
      ),
    );
  }
}
