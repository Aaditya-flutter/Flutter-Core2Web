// Create an AppBar, give an Icon at the end of the appbar, and give a title in the middle of the appbar.

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My App"
        ),
        actions: const[
          Icon(
            Icons.menu
          )
        ],
      ),
    );
  }
}