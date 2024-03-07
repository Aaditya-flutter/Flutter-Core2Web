// In the screen, add a container with size (width: 300, height: 300). Give colour to the container. Make container's top-left and bottom-right corners rounded with radius 20.

import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
