// In the screen, add a container with size (width: 300, height: 300) and add a border to that Container, the border must be of color red. Also, add rounded corners to the container with a radius 20.

import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          ),
        height: 300,
        width: 300,
        ),
      ),
    );
  }
}
