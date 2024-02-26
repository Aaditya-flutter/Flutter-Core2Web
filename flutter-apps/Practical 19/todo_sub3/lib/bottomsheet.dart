import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
        backgroundColor: Colors.purple[100],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                children: [
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 330,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          minHeight: 72,
                          minWidth: 330,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 330,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
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
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.purple[100],
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
