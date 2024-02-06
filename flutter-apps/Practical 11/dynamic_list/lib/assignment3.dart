import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int num = 0;
  List<int?> newList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List Builder"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: newList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 300,
            color: Colors.amber[100],
            alignment: const Alignment(0, 0),
            margin: const EdgeInsets.all(10),
            child: Text(
              "Container ${newList[index]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
            newList.add(num);
          });
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
