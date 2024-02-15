import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Message(),
    );
  }
}

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State createState() => _MessageState();
}

class _MessageState extends State {
  final FocusNode myFocusNode = FocusNode();
  final TextEditingController _myController = TextEditingController();
  List<String?> myList = [];

  displayMessage(String value) {
    myList.add(value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TextField UI",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
              wordSpacing: 4),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SizedBox(
        // height: double.infinity,
        // width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                autofocus: true,
                controller: TextEditingController(),
                focusNode: myFocusNode,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  constraints: const BoxConstraints(
                    maxHeight: 60,
                    maxWidth: 370,
                  ),
                  hintText: "Enter your text here",
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.purple,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.purple,
                    ),
                  ),
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                onSubmitted: (value) {
                  displayMessage(value);
                  UndoHistoryController();
                  myFocusNode.requestFocus();
                },
              ),
              const SizedBox(
                height: 40,
              ),
              (myList.isEmpty)
                  ? const Text("Your messages will appear here")
                  // : SizedBox(
                      : ListView.builder(
                        shrinkWrap: true,
                        itemCount: myList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 7),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple,
                                  offset: Offset(2, 2),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: Text(
                              "${myList[index]}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ),
                    // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myFocusNode.requestFocus();
        },
        child: const Icon(
          Icons.sticky_note_2_rounded,
          color: Colors.purple,
        ),
      ),
    );
  }
}
