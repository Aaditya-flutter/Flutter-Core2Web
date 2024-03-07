import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  /// VARIABLE
  int? selectedIndex = 0;

  /// LIST OF IMAGES
  final List<String> imageList = [
    "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
    "https://img.freepik.com/premium-photo/painting-lake-with-mountains-sun-shining-it_865053-55.jpg",
    "https://media.istockphoto.com/id/516418070/photo/perth-city-gold-light-park.jpg?s=612x612&w=0&k=20&c=L3G0nFeYsPdtSazwo4C05DoWxP_vXMpU0Wev86EK6Hs=",
    "https://www.w3schools.com/css/img_5terre_wide.jpg",
    "https://thumbs.dreamstime.com/b/stony-path-woods-deep-36889554.jpg"];

  void showNextImages() {
    setState(() {
      if (selectedIndex! < imageList.length-1) {
        selectedIndex = selectedIndex! + 1;
      } else {
        selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: showNextImages,
              child: const Text("Next"),
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}