// Indian Flag (Stateful)

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool toggleFlag = false;
  int showFlag = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          "Indian Flag",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.orange[700],
      ),
      body: (toggleFlag || showFlag > 0) 
      ?Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  (showFlag > 6)
                      ? Container(
                          width: 15,
                          height: 76.68,
                          // color: Colors.brown,
                          decoration: const BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(5),
                              topEnd: Radius.circular(5),
                            ),
                          ),
                        )
                      : Container(
                          width: 15,
                          height: 76.68,
                          // color: Colors.brown,
                          decoration: BoxDecoration(
                            color: toggleFlag ? Colors.brown : Colors.grey[50],
                            borderRadius: const BorderRadiusDirectional.only(
                              topStart: Radius.circular(5),
                              topEnd: Radius.circular(5),
                            ),
                          ),
                        ),
                  (showFlag > 5)
                      ? Container(
                          width: 15,
                          height: 66.66,
                          color: Colors.brown,
                        )
                      : Container(
                          width: 15,
                          height: 66.66,
                          color: toggleFlag ? Colors.brown : Colors.grey[50],
                        ),
                  (showFlag > 4)
                      ? Container(
                          width: 15,
                          height: 66.66,
                          color: Colors.brown,
                        )
                      : Container(
                          width: 15,
                          height: 66.66,
                          color: toggleFlag ? Colors.brown : Colors.grey[50],
                        ),
                  (showFlag > 3)
                      ? Container(
                          width: 15,
                          height: 290,
                          color: Colors.brown,
                        )
                      : Container(
                          width: 15,
                          height: 290,
                          color: toggleFlag ? Colors.brown : Colors.grey[50],
                        ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  (showFlag > 6)
                      ? Container(
                          height: 66.66,
                          width: 300,
                          color: Colors.orange[900],
                        )
                      : Container(
                          height: 66.66,
                          width: 300,
                          color:
                              toggleFlag ? Colors.orange[900] : Colors.grey[50],
                        ),
                  (showFlag > 5)
                      ? (showFlag < 8)
                          ? Container(
                              height: 66.66,
                              width: 300,
                              alignment: const Alignment(0, 0),
                              color: Colors.white,
                            )
                          : Container(
                              height: 66.66,
                              width: 300,
                              alignment: const Alignment(0, 0),
                              color: Colors.white,
                              child:
                                  Image.asset("assets/images/ashok chakra.png"),
                            )
                      : Container(
                          height: 66.66,
                          width: 300,
                          alignment: const Alignment(0, 0),
                          color: toggleFlag ? Colors.white : Colors.grey[50],
                          child: toggleFlag
                              ? Image.asset("assets/images/ashok chakra.png")
                              : Container(),
                        ),
                  (showFlag > 4)
                      ? Container(
                          height: 66.66,
                          width: 300,
                          color: Colors.green[800],
                        )
                      : Container(
                          height: 66.66,
                          width: 300,
                          color:
                              toggleFlag ? Colors.green[800] : Colors.grey[50],
                        ),
                  const SizedBox(
                    height: 285,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  (showFlag > 2)
                      ? Container(
                          width: 60,
                          height: 10,
                          color: Colors.grey[500],
                        )
                      : Container(
                          width: 60,
                          height: 10,
                          color:
                              toggleFlag ? Colors.grey[500] : Colors.grey[50],
                        ),
                  (showFlag > 1)
                      ? Container(
                          width: 70,
                          height: 10,
                          color: Colors.grey[500],
                        )
                      : Container(
                          width: 70,
                          height: 10,
                          color:
                              toggleFlag ? Colors.grey[500] : Colors.grey[50],
                        ),
                  (showFlag > 0)
                      ? Container(
                          width: 80,
                          height: 10,
                          color: Colors.grey[500],
                        )
                      : Container(
                          width: 80,
                          height: 10,
                          color:
                              toggleFlag ? Colors.grey[500] : Colors.grey[50],
                        ),
                ],
              ),
            ],
          ),
        ],
      )
      : Center(
        child: Text(
          "Please perform the appropriate action to see the 'Flag'",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.green[600],
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.refresh_sharp), label: 'Refresh'),
          toggleFlag 
          ? const BottomNavigationBarItem(
              icon: Icon(Icons.flag_sharp), label: 'Toggle Flag')
          : const BottomNavigationBarItem(
              icon: Icon(Icons.flag_outlined), label: 'Toggle Flag'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.auto_fix_high_outlined), label: 'Show Flag'),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              setState(() {
                toggleFlag = false;
                showFlag = 0;
              });
              break;
            case 1:
              if (showFlag >= 8) {
                setState(() {
                  showFlag = 0;
                  toggleFlag = true;
                });
              }
              if (showFlag < 8) {
                setState(() {
                  showFlag = 0;
                  toggleFlag = !toggleFlag;
                });
              }
              break;
            case 2:
              setState(() {
                showFlag++;
              });
              break;
          }
        },
      ),
    );
  }
}
