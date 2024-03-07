import 'package:flutter/material.dart';
import 'package:textfield_2/main.dart';

bool thisScreen = true;

class LifeCycleWidget extends StatefulWidget {
  const LifeCycleWidget({super.key});

  @override
  State createState() {
    print("In createState");
    return _LifeCycleWidgetState();
  }
}

class _LifeCycleWidgetState extends State {
  @override
  void initState() {
    super.initState();
    print("In initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("In dispose");
  }

  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    print("In build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widget Life Cycle",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: toggle ? Colors.red : Colors.blue,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  toggle = !toggle;
                  print("In setState");
                });
              },
              child: const Text("Press"),
            ),
            ElevatedButton(
              onPressed: () {
                thisScreen = !thisScreen;
                runApp(const MainApp());
              },
              child: const Text("Exit"),
            ),
          ],
        ),
      ),
    );
  }
}
