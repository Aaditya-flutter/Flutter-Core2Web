// Indian Flag (Stateless)

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          "Indian Flag",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange[700],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                // mainAxisSize: MainAxisSize.values[520],
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 15,
                    height: 500,
                    // color: Colors.brown,
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(5),
                        topEnd: Radius.circular(5),
                      )
                    ),
                  ),
                ],
              ),
              Column(
                // mainAxisSize: MainAxisSize.values[520],
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 66.66,
                    width: 300,
                    color: Colors.orange[900],
                  ),
                  Container(
                      height: 66.66,
                      width: 300,
                      alignment: const Alignment(0, 0),
                      color: Colors.white,
                      child: Image.asset("assets/images/ashok chakra.png")),
                  Container(
                    height: 66.66,
                    width: 300,
                    color: Colors.green[800],
                  ),
                  const SizedBox(
                    height: 285,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 10,
                    color: Colors.grey[500],
                  ),
                  Container(
                    width: 70,
                    height: 10,
                    color: Colors.grey[500],
                  ),
                  Container(
                    width: 80,
                    height: 10,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
