import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State createState() => _TodoState();
}

class TaskData {
  final String? title;
  final String? description;
  // add variable for date here and also in constructor

  const TaskData(this.title, this.description);
}

class _TodoState extends State {
  List<TaskData> taskCard = [];
  List<Color> cardcolor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  int taskCount = 0;
  int colorIndex = -1;

  void displayCard() {
    colorIndex++;
    if (colorIndex > cardcolor.length - 1) {
      colorIndex = 0;
    }
    taskCount++;
    taskCard.add(TaskData(loremIpsum(words: 6), loremIpsum(words: 22)));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w700,
              height: 32.5,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 400,
              height: 710,
              child: ListView.builder(
                itemCount: taskCard.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 330,
                    height: 127,
                    margin: const EdgeInsets.only(
                      top: 25,
                      left: 15,
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      color: cardcolor[colorIndex],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(
                                top: 23,
                                left: 20,
                                right: 25,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    color: Color.fromRGBO(0, 0, 0, 0.07),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                "assets/images/onerror.png",
                                width: 23.79,
                                height: 19.07,
                              ),
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 243,
                                  height: 15,
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "${taskCard[index].title}",
                                    style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        height: 15,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 243,
                                  height: 44,
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "${taskCard[index].description}",
                                    style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                        color: Color.fromRGBO(84, 84, 84, 1),
                                        height: 14,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              height: 38,
                              width: 10,
                            ),
                            Text(
                              "21 Feb 2024",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  color: Color.fromRGBO(132, 132, 132, 1),
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(
                                color: Color.fromRGBO(0, 139, 148, 1),
                                Icons.mode_edit_outline_outlined,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                color: Color.fromRGBO(0, 139, 148, 1),
                                Icons.delete_outline_sharp,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayCard();
        },
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
