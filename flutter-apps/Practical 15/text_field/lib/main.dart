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
      home: MyNotes(),
    );
  }
}

class MyNotes extends StatefulWidget {
  const MyNotes({super.key});

  @override
  State createState() => _MyNotesState();
}

class _MyNotesState extends State {
  final FocusNode _textFieldFocusNode = FocusNode();
  final TextEditingController _textEditingController = TextEditingController();
  List<String?> noteList = [];

  stickNote(String value) {
    noteList.add(value);
    _textEditingController.clear();
    _textFieldFocusNode.requestFocus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Notes",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
              wordSpacing: 4),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                autofocus: true,
                controller: _textEditingController,
                focusNode: _textFieldFocusNode,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  constraints: const BoxConstraints(
                    maxHeight: 60,
                    maxWidth: 370,
                  ),
                  hintText: "Write your note here",
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
                  stickNote(value);
                },
              ),
              const SizedBox(
                height: 60,
              ),
              (noteList.isEmpty)
                  ? const Text("Your notes will appear here")
                  : SizedBox(
                      height: 600,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: noteList.length,
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
                              "${noteList[index]}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 5,
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
          (noteList.isEmpty)
              ? _textFieldFocusNode.requestFocus()
              : stickNote(_textEditingController.text);
        },
        child: const Icon(
          Icons.sticky_note_2_rounded,
          color: Colors.purple,
        ),
      ),
    );
  }
}
