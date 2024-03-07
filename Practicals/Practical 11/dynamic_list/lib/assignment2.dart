import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  List<String> imageList = [
    "https://cdn.pixabay.com/photo/2023/08/22/04/12/ai-generated-8205363_960_720.jpg",
    "https://cdn.pixabay.com/photo/2022/12/09/05/04/christmas-7644625_960_720.jpg",
    "https://cdn.pixabay.com/photo/2023/09/25/10/05/ai-generated-8274619_640.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dynamic List"),
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Image.network(imageList[index]),
        );
      }),
    );
  }
}