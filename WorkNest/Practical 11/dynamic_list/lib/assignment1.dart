import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Demo"),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/021/746/785/small/holding-a-tree-in-a-ball-ecology-and-environment-concept-with-generative-ai-photo.jpg"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_640.jpg"),
          ),
        ],
      ),
    );
  }
}