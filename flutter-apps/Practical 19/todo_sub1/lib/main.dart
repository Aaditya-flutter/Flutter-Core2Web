import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular Container"),
        backgroundColor: const Color.fromARGB(175, 246, 49, 5),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 224, 66, 27),
            ),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                offset: Offset(1, 1),
                blurRadius: 10,
                spreadRadius: 5,
                color: Colors.black38,
              ),
            ],
            color: const Color.fromARGB(175, 246, 49, 5),
          ),
          child: Image.asset(
            "assets/images/Virat.png",
            height: 70,
          ),
        ),
      ),
    );
  }
}
