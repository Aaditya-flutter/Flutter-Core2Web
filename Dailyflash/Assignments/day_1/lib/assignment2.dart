// Create an AppBar give a color of your choice to the AppBar and then add an icon at the start of the AppBar and 3 icons at the end of the AppBar.

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: const Icon(
          Icons.home,
          size: 35,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.qr_code_scanner,
            size: 35,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
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
