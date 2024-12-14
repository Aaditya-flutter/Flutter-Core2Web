import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:plant/view/detail_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Image.asset('assets/Images/Mask group.png'),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 179,
                    child: Text(
                      'Find your favorite plants',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 16.1,
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/Images/shopping-bag.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: FlutterCarousel.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: 310,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(204, 231, 185, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 27,
                            top: 26,
                            bottom: 32,
                            right: 37,
                          ),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "30% OFF",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                                Text(
                                  "02-23 April",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                            "assets/Images/83003846_Spider Plant- Chlorophytum Comosum -11 1.png"),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 138,
                  viewportFraction: 0.82,
                  floatingIndicator: false,
                  padEnds: false,
                  slideIndicator: const CircularSlideIndicator(
                    slideIndicatorOptions: SlideIndicatorOptions(
                      itemSpacing: 14,
                      indicatorRadius: 4,
                      currentIndicatorColor: Color.fromRGBO(62, 102, 24, 1),
                      indicatorBackgroundColor:
                          Color.fromRGBO(197, 214, 181, 1),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 9),
              child: Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Indoor",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 286,
              child: ListView.builder(
                itemCount: 3,
                padding: const EdgeInsets.only(
                    left: 20, bottom: 20, right: 20, top: 13),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 188,
                      width: 141,
                      margin: const EdgeInsets.only(
                        right: 13,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(9.4),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            offset: Offset(0, 7.52),
                            blurRadius: 18.8,
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 6.58,
                          ),
                          Image.asset(
                              "assets/Images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                          const SizedBox(
                            height: 8.46,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 14.1,
                              ),
                              Text(
                                "Snake Plants",
                                style: GoogleFonts.dmSans(
                                  textStyle: const TextStyle(
                                    fontSize: 13.16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.5,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 14.1,
                              ),
                              Text(
                                "₹350",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 16.92,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(62, 102, 24, 1),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 26,
                                width: 26,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(237, 238, 235, 1),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  "assets/Images/shopping-bag (1).png",
                                  width: 14,
                                  height: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(
              thickness: 0.0,
              indent: 10,
              endIndent: 10,
              color: Color.fromRGBO(204, 211, 196, 1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 9),
              child: Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Outdoor",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 286,
              child: ListView.builder(
                itemCount: 3,
                padding: const EdgeInsets.only(
                    left: 20, bottom: 20, right: 20, top: 13),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 188,
                      width: 141,
                      margin: const EdgeInsets.only(
                        right: 13,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(9.4),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            offset: Offset(0, 7.52),
                            blurRadius: 18.8,
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 6.58,
                          ),
                          Image.asset(
                              "assets/Images/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                          const SizedBox(
                            height: 8.46,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 14.1,
                              ),
                              Text(
                                "Snake Plants",
                                style: GoogleFonts.dmSans(
                                  textStyle: const TextStyle(
                                    fontSize: 13.16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.5,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 14.1,
                              ),
                              Text(
                                "₹350",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 16.92,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(62, 102, 24, 1),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 26,
                                width: 26,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(237, 238, 235, 1),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  "assets/Images/shopping-bag (1).png",
                                  width: 14,
                                  height: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
