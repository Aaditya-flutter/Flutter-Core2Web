import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _SpecialNumbers();
}

class _SpecialNumbers extends State<Assignment1> {
  int pCount = 0;
  int sCount = 0;
  int aCount = 0;

  final List<int> pList = [125, 846, 49, 535, 783];
  final List<int> sList = [2, 341, 145, 48, 164];
  final List<int> aList = [17, 371, 407, 153, 13];

  void palindrome() {
    pCount = 0;
    for (int i = 0; i < pList.length - 1; i++) {
      int temp = pList[i];
      int rev = 0;
      while (temp != 0) {
        int rem = temp % 10;
        rev = rev * 10 + rem;
        temp = temp ~/ 10;
      }
      if (rev == pList[i]) {
        setState(() {
          pCount++;
        });
      }
    }
  }

  void strong() {
    sCount = 0;
    for (int i = 0; i < sList.length - 1; i++) {
      int sum = 0;
      int temp = sList[i];

      while (temp != 0) {
        int rem = temp % 10;
        int fact = 1;
        for (int j = 1; j <= rem; j++) {
          fact = fact * j;
        }
        sum = sum + fact;
        temp = temp ~/ 10;
      }

      if (sum == sList[i]) {
        setState(() {
          sCount++;
        });
      }
    }
  }

  void armstrong() {
    aCount = 0;
    for (int i = 0; i < aList.length - 1; i++) {
      int sum = 0;
      int temp1 = aList[i];

      int count = 0;
      while (temp1 != 0) {
        count++;
        temp1 = temp1 ~/ 10;
      }

      int temp2 = aList[i];

      while (temp2 != 0) {
        int rem = temp2 % 10;
        int pow = 1;
        for (int j = 1; j <= count; j++) {
          pow = pow * rem;
        }
        sum = sum + pow;
        temp2 = temp2 ~/ 10;
      }

      if (sum == aList[i]) {
        setState(() {
          aCount++;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sepcial calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    child: Text("${pList[0]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    child: Text("${pList[1]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    child: Text("${pList[2]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    child: Text("${pList[3]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    child: Text("${pList[4]}"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: palindrome,
                    child: const Text("Generate"),
                  ),
                  Text("Count of Palindrome = $pCount"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    child: Text("${sList[0]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    child: Text("${sList[1]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    child: Text("${sList[2]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    child: Text("${sList[3]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    child: Text("${sList[4]}"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: strong,
                    child: const Text("Generate"),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text("Count of Strong = $sCount"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    child: Text("${aList[0]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    child: Text("${aList[1]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    child: Text("${aList[2]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    child: Text("${aList[3]}"),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    child: Text("${aList[4]}"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: armstrong,
                    child: const Text("Generate"),
                  ),
                  Text("Count of Armstrong  = $aCount"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
