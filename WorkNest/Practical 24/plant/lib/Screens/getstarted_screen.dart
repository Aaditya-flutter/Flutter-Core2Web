import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatefulWidget {
  const PlantApp({super.key});

  @override
  State createState() => _PlantAppState();
}

class _PlantAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Image.asset(
              "assets/images/image 2.png",
              scale: 0.9,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 50,
              left: 75,
              right: 75,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Enjoy your        life with ',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(47, 47, 47, 1),
                    fontSize: 34.22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'plants',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: GestureDetector(
              child: Container(
                height: 50,
                width: 320,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 40,
                      offset: Offset(0, 20),
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started ",
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      weight: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
