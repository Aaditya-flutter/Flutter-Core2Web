import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Color.fromRGBO(62, 102, 24, 1),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          FlutterCarousel.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return SizedBox(
                height: 243.75,
                width: 195,
                child: Image.asset(
                  "assets/Images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png",
                  fit: BoxFit.fill,
                ),
              );
            },
            options: CarouselOptions(
              height: 280,
              viewportFraction: 1,
              floatingIndicator: false,
              indicatorMargin: 36.25,
              padEnds: false,
              slideIndicator: const CircularSlideIndicator(
                slideIndicatorOptions: SlideIndicatorOptions(
                  itemSpacing: 14,
                  indicatorRadius: 4,
                  currentIndicatorColor: Color.fromRGBO(62, 102, 24, 1),
                  indicatorBackgroundColor: Color.fromRGBO(197, 214, 181, 1),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            children: [
              const SizedBox(
                width: 31,
              ),
              Text(
                "Snake Plants",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(48, 48, 48, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 31,
              ),
              SizedBox(
                width: 298,
                child: Text(
                  "Plants make your life with minimal and happy love the plants more and enjoy life.",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(48, 48, 48, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(118, 152, 75, 1),
            ),
          ),
        ],
      ),
    );
  }
}
