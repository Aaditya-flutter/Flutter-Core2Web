import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App", style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text("Question: 1/10"),
            const SizedBox(
              height: 20,
            ),
            const Text("Question 1: What is Flutter?"),
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
          onPressed: () {}, child: const Icon(Icons.navigate_next)),
    );
  }
}
