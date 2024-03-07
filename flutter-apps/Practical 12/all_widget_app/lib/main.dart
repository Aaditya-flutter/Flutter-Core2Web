import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool profile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {
                profile = !profile;
              });
            },
            icon: const Icon(Icons.menu_rounded)),
        title: const Text("My GPT"),
        actions: const [
          Icon(Icons.library_add_outlined),
          Icon(Icons.more_vert_rounded),
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // color: Color.fromARGB(255, 32, 33, 36),
            children: [
              if (profile)
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Chat GPT"),
                      SizedBox(
                        child: Text("Explore GPT"),
                      ),
                    ],
                  ),
                ),
              Column(
                children: [
                  const SizedBox(
                    height: 220,
                  ),
                  Center(
                    child: SizedBox(
                      // decoration: const BoxDecoration(
                      //   shape: BoxShape.circle,
                      //   borderRadius: BorderRadius.all(Radius.circular(1)),
                      // ),
                      child: Image.asset(
                        "assets/images/gpt_Logo.jpg",
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 270,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: const Alignment(0, 0),
                        height: 50,
                        width: 250,
                        color: Colors.grey[300],
                        child: const Text("Message"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey)),
                        child: const Icon(Icons.arrow_upward_rounded),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.headset),
      ),
    );
  }
}
