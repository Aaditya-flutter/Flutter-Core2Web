import 'package:flutter/material.dart';

class QuizAppUI extends StatefulWidget {
  const QuizAppUI({super.key});

  @override
  State<QuizAppUI> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizAppUI> {
  int queCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text("Question: $queCount/10",
            style: const TextStyle(fontSize: 20)),
            const SizedBox(
              height: 20,
            ),
            const Text("Question 1: What is Flutter?",
            style: TextStyle(fontSize: 16)),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.only(
                      left: 100, right: 100, top: 5, bottom: 5))),
              child: const Text("Option 1"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.only(
                      left: 100, right: 100, top: 5, bottom: 5))),
              child: const Text("Option 2"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.only(
                      left: 100, right: 100, top: 5, bottom: 5))),
              child: const Text("Option 3"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.only(
                      left: 100, right: 100, top: 5, bottom: 5))),
              child: const Text("Option 4"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[700],
          onPressed: () {
            setState(() {
              if (queCount < 10) {
                queCount++;
              }
            });
          },
          child: const Icon(Icons.navigate_next)),
    );
  }
}
