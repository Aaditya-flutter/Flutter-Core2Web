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
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int display = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (display > 0)
                  ? const Text(
                      "Name: Aaditya Ganeshrao Assalkar",
                      style: TextStyle(fontSize: 15),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (display > 1)
                  ? Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/My_Profile_Photo.jpg",
                        height: 200,
                        width: 250,
                      ),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (display > 2)
                  ? const Text(
                      "College: Zeal College of Engineering and Research, Narhe",
                      style: TextStyle(fontSize: 15),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (display > 3)
                  ? Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/Zeal_Logo.jpeg",
                        height: 100,
                        width: 250,
                      ),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (display > 4)
                  ? const Text(
                      "Dream Company: Google",
                      style: TextStyle(fontSize: 15),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (display > 5)
                  ? Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/Google_Logo.jpg",
                        height: 100,
                        width: 270,
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            display++;
            if (display > 6) {
              display = 0;
            }
          });
        },
        child: const Text("Next"),
      ),
    );
  }
}
