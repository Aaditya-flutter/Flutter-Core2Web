import 'package:flutter/material.dart';

class ColorBox extends StatefulWidget {
  const ColorBox({super.key});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  int box1count = 0;
  int box2count = 0;

  Color box1color() {
    if(box1count == 1){
      return Colors.black;
    } else if(box1count == 2) {
      return Colors.green;
    }else if(box1count == 3) {
      return Colors.blue;
    } else {
      box1count = 0;
      return Colors.red;
    }
  }

  Color box2color() {
    if(box2count == 1){
      return Colors.blue;
    } else if(box2count == 2) {
      return Colors.green;
    }else if(box2count == 3) {
      return Colors.red;
    } else {
      box2count = 0;
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Boxes"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: box1color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                   box1count++; 
                  });
                },
                child: const Text("Button 1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: box2color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    box2count++;
                  });
                },
                child: const Text("Button 2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}