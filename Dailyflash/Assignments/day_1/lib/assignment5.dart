// Create a Screen, in the center of the Screen display a Container with rounded corners, give a specific color to the Container, the container must have a shadow of color red.

import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              width: 5,
              color: const Color.fromARGB(255, 213, 80, 9),
            ),
            borderRadius: BorderRadius.circular(125),
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(0, 0),
                blurRadius: 90,
                spreadRadius: 0,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
