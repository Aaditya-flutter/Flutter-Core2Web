import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Center(
        child: Center(
          child: Text(
            "Not Comming",
            style: GoogleFonts.abel(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: Color.fromRGBO(157, 178, 206, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
