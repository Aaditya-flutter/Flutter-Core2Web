import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Container heightWidthColor() {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
    );
  }

  Container padding1() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      color: Colors.red,
    );
  }

  Container padding2() {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      height: 100,
      width: 100,
      color: Colors.blue,
    );
  }

  Container margin() {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
      ),
      color: Colors.red,
    );
  }

  Container decorationBorder() {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.yellow,
          width: 5,
        ),
      ),
    );
  }

  Container decorationBorderRadius() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
      ),
    );
  }

  Container decorationColor() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
      ),
    );
  }

  Container decorationBoxShadow() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.purple,
            offset: Offset(30, 30),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.red,
            offset: Offset(20, 20),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.green,
            offset: Offset(10, 10),
            blurRadius: 8,
          ),
        ],
      ),
    );
  }

  Container decorationGradient() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
        gradient: const LinearGradient(
          stops: [0.3, 0.5],
          colors: [Colors.red, Colors.green],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // child: heightWidthColor(),
          // child: padding1(),
          // child: padding2(),
          // child: margin(),
          // child: decorationBorder(),
          // child: decorationBorderRadius(),
          // child: decorationColor(),
          // child: decorationBoxShadow(),
          child: decorationGradient(),
        ),
      ),
    );
  }
}
