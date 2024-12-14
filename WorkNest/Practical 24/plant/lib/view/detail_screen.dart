import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color.fromRGBO(62, 102, 24, 1),
          ),
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
                  "assets/Images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1 (1).png",
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
            height: 205,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(118, 152, 75, 1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 11.0,
                    top: 24,
                    right: 11,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/Images/Group 5470.png"),
                          const SizedBox(
                            height: 19,
                          ),
                          Text(
                            "Height",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "30cm- 40cm",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/Images/thermometer.png"),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Temperature",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "20'C- 25'C",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/Images/Vector (1).png"),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Pot",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Ciramic Pot",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 11,
                    right: 11,
                    top: 30,
                    bottom: 23.61,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Price",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ),
                            ),
                          ),
                          Text(
                            "₹350",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 48.39,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.06),
                          color: const Color.fromRGBO(103, 133, 74, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Images/shopping-bag (2).png"),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Add to cart",
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontSize: 14.52,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
