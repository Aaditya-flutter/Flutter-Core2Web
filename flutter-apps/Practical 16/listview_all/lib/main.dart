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
      home: Cricket(),
    );
  }
}

class Cricket extends StatefulWidget {
  const Cricket({super.key});

  @override
  State createState() => _CricketState();
}

class _CricketState extends State {
  List<Map> cricketer = [
    {
      "photo": [
        "assets/images/Pandya.png",
        "assets/images/Suryakumar.png",
        "assets/images/Rinku.png",
      ],
      "name": ["Hardik Pandya", "Suryakumar Yadav", "Rinku Singh"],
    },
    {
      "photo": [
        "assets/images/Rohit.png",
        "assets/images/Virat.png",
        "assets/images/KLRahul.png",
      ],
      "name": ["Rohit Sharma", "Virat Kohli", "K L Rahul"],
    },
    {
      "photo": [
        "assets/images/Rahane.png",
        "assets/images/Pujara.png",
        "assets/images/Shubman.png",
      ],
      "name": ["Ajinkya Rahane", "Cheteshwar Pujara", "Shubman Gill"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cricket Players",
          style: TextStyle(
            color: Colors.brown[900],
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: 350,
          child: ListView.separated(
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 0) {
                return SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 25),
                        decoration: const BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          "T20 Players: ",
                          style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        margin:
                            const EdgeInsets.only(left: 24, right: 24, top: 12),
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Image.asset(
                          cricketer[0]["photo"][0],
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 45,
                        margin: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Text(
                          "Name: ${cricketer[0]["name"][0]}",
                          style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 21,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        margin:
                            const EdgeInsets.only(left: 24, right: 24, top: 12),
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Image.asset(
                          cricketer[0]["photo"][1],
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 45,
                        margin: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Text(
                          "Name: ${cricketer[0]["name"][1]}",
                          style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 21,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        margin:
                            const EdgeInsets.only(left: 24, right: 24, top: 12),
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Image.asset(
                          cricketer[0]["photo"][2],
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 45,
                        margin: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Text(
                          "Name: ${cricketer[0]["name"][2]}",
                          style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 21,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else if (index == 1) {
                return SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: cricketer[1]["name"].length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            margin: const EdgeInsets.only(
                                left: 24, right: 24, top: 12),
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Image.asset(
                              cricketer[1]["photo"][index],
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            margin: const EdgeInsets.only(
                                left: 24, right: 24, bottom: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.red[700],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Text(
                              "Name: ${cricketer[1]["name"][index]}",
                              style: TextStyle(
                                color: Colors.brown[900],
                                fontSize: 21,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              } else {
                return SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: cricketer[2]["name"].length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            margin: const EdgeInsets.only(
                                left: 24, right: 24, top: 12),
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Image.asset(
                              cricketer[2]["photo"][index],
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            margin: const EdgeInsets.only(
                                left: 24, right: 24, bottom: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.purple[700],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Text(
                              "Name: ${cricketer[2]["name"][index]}",
                              style: TextStyle(
                                color: Colors.brown[900],
                                fontSize: 21,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 2,
                        margin: const EdgeInsets.symmetric(horizontal: 45),
                        color: Colors.black,
                      );
                    },
                  ),
                );
              }
            },
            separatorBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.only(left: 25),
                  decoration: const BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    "One day Players: ",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                );
              } else {
                return Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.only(left: 25),
                  decoration: const BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Test Players: ",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
