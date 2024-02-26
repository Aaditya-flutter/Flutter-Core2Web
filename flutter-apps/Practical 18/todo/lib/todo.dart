import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'dart:ui';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State createState() => _TodoState();
}

class TaskData {
  final String? title;
  final String? description;
  final String? date;

  const TaskData(
      {required this.title, required this.description, required this.date});
}

class _TodoState extends State {
  List<TaskData> taskCard = [];
  List<Color> cardcolor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  int colorIndex = -1;

  void displayCard() {
    colorIndex++;
    if (colorIndex >= cardcolor.length) {
      colorIndex = 0;
    }
    cardcolor.add(cardcolor[colorIndex]);
    taskCard.add(
      TaskData(
        title: titleController.text,
        description: descriptionController.text,
        date: dateController.text,
      ),
    );

    titleController.clear();
    descriptionController.clear();
    dateController.clear();
    setState(() {});
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  FocusNode focusDescripton = FocusNode();

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
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 400,
                height: 760,
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemCount: taskCard.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 330,
                      height: 127,
                      margin: const EdgeInsets.only(
                        top: 25,
                        left: 15,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        color: cardcolor[index],
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
                                height: 55,
                                width: 55,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                  top: 23,
                                  left: 17.5,
                                  right: 17.5,
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
                                  width: 26.79,
                                  height: 22.07,
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 265,
                                    height: 15,
                                    margin: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      "${taskCard[index].title}",
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 265,
                                    height: 44,
                                    margin: const EdgeInsets.only(right: 15),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Text(
                                        "${taskCard[index].description}",
                                        style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(84, 84, 84, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
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
                                width: 10,
                              ),
                              Text(
                                "${taskCard[index].date}",
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                                onPressed: () {
                                  taskCard.removeAt(index);
                                  setState(() {});
                                },
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.viewInsetsOf(context).bottom,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Create Task",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        TextField(
                          controller: titleController,
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: const InputDecoration(
                            constraints: BoxConstraints(
                              maxHeight: 50,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                          ),
                          textInputAction: TextInputAction.next,
                          // onSubmitted: (value) {
                          //   focusDescripton;
                          // },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Description",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        TextField(
                          focusNode: focusDescripton,
                          controller: descriptionController,
                          selectionHeightStyle:
                              BoxHeightStyle.includeLineSpacingTop,
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          maxLines: null,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Date",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        TextField(
                          controller: dateController,
                          keyboardType: TextInputType.none,
                          onTap: () async {
                            DateTime? pickDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2025),
                            );
                            String formatedDate =
                                DateFormat.yMMMd().format(pickDate!);
                            setState(() {
                              dateController.text = formatedDate;
                            });
                          },
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: InputDecoration(
                            constraints: const BoxConstraints(
                              maxHeight: 50,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () async {
                                DateTime? pickDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2024),
                                  lastDate: DateTime(2025),
                                );
                                String formatedDate =
                                    DateFormat.yMMMd().format(pickDate!);
                                setState(() {
                                  dateController.text = formatedDate;
                                });
                              },
                              child: const Icon(Icons.calendar_month),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 330,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          displayCard();
                        },
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        child: Text(
                          "Submit",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              );
            },
          );
        },
        shape: const CircleBorder(eccentricity: 0),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(
          Icons.add_sharp,
          size: 50,
          color: Colors.white,
          shadows: [
            BoxShadow(
              blurRadius: 8,
              color: Color.fromRGBO(0, 0, 0, 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
