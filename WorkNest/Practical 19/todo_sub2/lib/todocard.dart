import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class TodoCard extends StatefulWidget {
  const TodoCard({super.key});

  @override
  State createState() => _TodoCardState();
}

class TaskData {
  final String? title;
  final String? description;

  const TaskData(this.title, this.description);
}

class _TodoCardState extends State {
  List cardData = [];
  List<Color> cardColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            Container(
              width: 380,
              height: 760,
              color: Colors.white,
              child: ListView.builder(
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 127,
                    width: 330,
                    margin: const EdgeInsets.only(top: 12, bottom: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cardColor[index % cardColor.length],
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1))
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
                                left: 15,
                                top: 23,
                                right: 15,
                              ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Image.asset(
                                "assets/images/onerror.png",
                                width: 23.79,
                                height: 19.07,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 243,
                                  height: 15,
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "${cardData[index].title}",
                                    style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 243,
                                  height: 44,
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "${cardData[index].description}",
                                    style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(84, 84, 84, 1),
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
                            Container(
                              width: 68,
                              height: 13,
                              margin: const EdgeInsets.only(left: 15),
                              child: Text(
                                "25 Feb 2024",
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(132, 132, 132, 1),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit_outlined,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete_outline_outlined,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
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
          cardData.add(
            TaskData(loremIpsum(words: 6), loremIpsum(words: 22)),
          );
          setState(() {});
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(255, 255, 255, 1),
          shadows: [
            Shadow(
              blurRadius: 8,
              color: Color.fromRGBO(0, 0, 0, 0.3),
            ),
          ],
          size: 50,
        ),
      ),
    );
  }
}
