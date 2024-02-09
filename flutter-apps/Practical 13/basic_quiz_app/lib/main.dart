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
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0,
    },
    {
      "question": "Who is the founder of Amazon?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Larry Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];

  MaterialStatePropertyAll<Color?> choosenOption(int option) {
    if (pressed != -1) {
      if (allQuestions[questionIndex]["options"][option] ==
          allQuestions[questionIndex]["options"]
              [allQuestions[questionIndex]["answerIndex"]]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else {
        if (option == pressed) {
          return const MaterialStatePropertyAll(Colors.red);
        } else {
          return const MaterialStatePropertyAll(Colors.white);
        }
      }
    } else {
      return const MaterialStatePropertyAll(Colors.white);
    }
  }

  bool questionScreen = true;
  int questionIndex = 0;
  bool correctAns = false;
  bool wrongAns = false;
  int pressed = -1;

  Scaffold isQuestionScreen() {
    if (questionScreen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Question: ${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              allQuestions[questionIndex]["question"],
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (pressed == -1) {
                    setState(() {
                      pressed = 0;
                      if (allQuestions[questionIndex]["options"][0] ==
                          allQuestions[questionIndex]["options"]
                              [allQuestions[questionIndex]["answerIndex"]]) {
                        correctAns = true;
                      } else {
                        wrongAns = true;
                      }
                    });
                  }
                },
                style: ButtonStyle(
                  alignment: const Alignment(-1, 0),
                  padding:
                      const MaterialStatePropertyAll(EdgeInsets.only(left: 35)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  backgroundColor: choosenOption(0),
                ),
                child: Text(
                  "A. ${allQuestions[questionIndex]["options"][0]}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (pressed == -1) {
                    setState(() {
                      pressed = 1;
                      if (allQuestions[questionIndex]["options"][1] ==
                          allQuestions[questionIndex]["options"]
                              [allQuestions[questionIndex]["answerIndex"]]) {
                        correctAns = true;
                      } else {
                        wrongAns = true;
                      }
                    });
                  }
                },
                style: ButtonStyle(
                  alignment: const Alignment(-1, 0),
                  padding:
                      const MaterialStatePropertyAll(EdgeInsets.only(left: 35)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  backgroundColor: choosenOption(1),
                ),
                child: Text(
                  "B. ${allQuestions[questionIndex]["options"][1]}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (pressed == -1) {
                    setState(() {
                      pressed = 2;
                      if (allQuestions[questionIndex]["options"][2] ==
                          allQuestions[questionIndex]["options"]
                              [allQuestions[questionIndex]["answerIndex"]]) {
                        correctAns = true;
                      } else {
                        wrongAns = true;
                      }
                    });
                  }
                },
                style: ButtonStyle(
                  alignment: const Alignment(-1, 0),
                  padding:
                      const MaterialStatePropertyAll(EdgeInsets.only(left: 35)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  backgroundColor: choosenOption(2),
                ),
                child: Text(
                  "C. ${allQuestions[questionIndex]["options"][2]}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (pressed == -1) {
                    setState(() {
                      pressed = 3;
                      if (allQuestions[questionIndex]["options"][3] ==
                          allQuestions[questionIndex]["options"]
                              [allQuestions[questionIndex]["answerIndex"]]) {
                        correctAns = true;
                      } else {
                        wrongAns = true;
                      }
                    });
                  }
                },
                style: ButtonStyle(
                  alignment: const Alignment(-1, 0),
                  padding:
                      const MaterialStatePropertyAll(EdgeInsets.only(left: 35)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  backgroundColor: choosenOption(3),
                ),
                child: Text(
                  "D. ${allQuestions[questionIndex]["options"][3]}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            if (pressed != -1) {
              setState(() {
                correctAns = false;
                wrongAns = false;
                pressed = -1;
                questionIndex++;
                if (questionIndex > allQuestions.length - 1) {
                  questionScreen = false;
                }
              });
            }
          },
          child: const Icon(Icons.navigate_next),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
