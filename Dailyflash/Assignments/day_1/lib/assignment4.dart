// Create a Screen that will display the Container in the Center of the Screen, with size(width: 300, height: 300). The container must have a blue color and it must have a border which must be of color red.

import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              width: 7,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
