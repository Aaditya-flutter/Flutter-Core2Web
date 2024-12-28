import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:music/view/gallery_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        children: [
          Image.asset("assets/Images/44 1.png"),
          Positioned(
            top: screenHeight * 0.53,
            left: 0,
            right: 0,
            child: Image.asset("assets/Images/Ellipse 11.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Text(
                  "Dancing between The shadows ",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Text(
                      "Of rhythm",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(_createRoute());
                    },
                    child: Container(
                      height: 47,
                      width: 261,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 46, 0, 1),
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(
                          color: Color.fromRGBO(255, 46, 0, 1),
                        ),
                      ),
                      child: Text(
                        "Get started",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color.fromRGBO(19, 19, 19, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 47,
                      width: 261,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(255, 46, 0, 1),
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(
                          color: Color.fromRGBO(255, 61, 0, 1),
                        ),
                      ),
                      child: Text(
                        "Continue with Email",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color.fromRGBO(255, 46, 0, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      "by continuing you agree to terms of services and Privacy policy",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(203, 200, 200, 0.43),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.06),
            ],
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) =>
        const GalleryScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.easeOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
