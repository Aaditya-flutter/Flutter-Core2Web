// Create a screen in which add 10 colourful containers vertically and make the screen scrollable.

import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.indigo,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.yellow,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.pink,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.brown,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
