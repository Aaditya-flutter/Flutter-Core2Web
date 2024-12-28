import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   BackButtonInterceptor.add(_onBackPressed);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   BackButtonInterceptor.remove(_onBackPressed);
  // }

  // Future<bool> _onBackPressed(
  //     bool stopDefaultButtonEvent, RouteInfo info) async {
  //   Navigator.pop(context, 4);
  //   return true;
  // }

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: GestureDetector(
        onVerticalDragDown: (details) {
          Navigator.pop(context);
        },
        child: Stack(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: 551,
              child: Image.asset(
                "assets/Images/272cf15a08dcca3bd22e258e7635e9c2 1.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height - 632,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color.fromRGBO(19, 19, 19, 1),
                    ],
                    stops: [0.7, 1],
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 475),
                Text(
                  "Alone in the Abyss",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color.fromRGBO(230, 154, 21, 1),
                    ),
                  ),
                ),
                Text(
                  "Youlakou",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                SizedBox(height: 46),
                Row(
                  children: [
                    SizedBox(width: 17),
                    Text(
                      "Dynamic Warmup |",
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: LinearProgressIndicator(
                    value: 0.3,
                    minHeight: 6,
                    color: Color.fromRGBO(230, 154, 21, 1),
                    backgroundColor: Color.fromRGBO(217, 217, 217, 0.19),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/Images/Vector (2).png"),
                    Image.asset("assets/Images/previous.png"),
                    Image.asset("assets/Images/play.png"),
                    Image.asset("assets/Images/next.png"),
                    Image.asset("assets/Images/volume.png"),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 562,
              left: 333,
              child: Text(
                "4 min",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 518,
              left: 348,
              child: Image.asset("assets/Images/share.png"),
            ),
          ],
        ),
      ),
    );
  }
}
