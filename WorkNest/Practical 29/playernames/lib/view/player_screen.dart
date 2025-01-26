import 'package:flutter/material.dart';
import 'package:playernames/model/player_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  TextEditingController playerNameTextController = TextEditingController();
  TextEditingController jerseyNoTextController = TextEditingController();

  List<PlayerModel> playerList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Firebase Player App",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[500],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: playerNameTextController,
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  hintText: "Enter Player Name",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: jerseyNoTextController,
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  hintText: "Enter Player Jersey No.",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (playerNameTextController.text.trim().isNotEmpty &&
                    jerseyNoTextController.text.trim().isNotEmpty) {
                  Map<String, dynamic> data = {
                    "playerName": playerNameTextController.text.trim(),
                    "jerNo": jerseyNoTextController.text.trim(),
                  };

                  FirebaseFirestore.instance
                      .collection("playersInfo")
                      .add(data);

                  playerNameTextController.clear();
                  jerseyNoTextController.clear();

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Data Added"),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Invalid Data"),
                    ),
                  );
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1.5,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                QuerySnapshot response = await FirebaseFirestore.instance
                    .collection("playersInfo")
                    .get();

                playerList.clear();

                for (int i = 0; i < response.docs.length; i++) {
                  print("${response.docs[i]['playerName']}");

                  playerList.add(
                    PlayerModel(
                      playerId: response.docs[i].id,
                      playerName: response.docs[i]['playerName'],
                      jerseyNo: response.docs[i]['jerNo'],
                    ),
                  );
                }

                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Get Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: RangeMaintainingScrollPhysics(),
                    itemCount: playerList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          FirebaseFirestore.instance
                              .collection('playersInfo')
                              .doc(playerList[index].playerId)
                              .delete();

                          playerList.removeAt(index);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Data Deleted"),
                            ),
                          );

                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orange[100],
                          ),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Player Name: ${playerList[index].playerName}",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Jersey No: ${playerList[index].jerseyNo}",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
