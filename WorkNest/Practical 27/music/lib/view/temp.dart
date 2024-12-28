import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/view/home_screen.dart';
import 'package:music/view/player_screen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int activeIndex = 0;
  int activePage = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: <Widget>[
        const PlayerScreen(),
        Center(
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
        const HomeScreen(),
        Center(
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
        NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Color.fromRGBO(21, 21, 21, 1),
              automaticallyImplyLeading: false,
              pinned: true,
              primary: false,
              expandedHeight: 414,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    FlutterCarousel.builder(
                      itemCount: 3,
                      itemBuilder: (context, itemIndex, pageViewIndex) => Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              "assets/Images/111 1.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Color.fromRGBO(24, 24, 24, 1),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 255,
                                        left: 20,
                                      ),
                                      child: Text(
                                        "A.L.O.N.E",
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 22,
                                        top: 11,
                                      ),
                                      child: Container(
                                        height: 37,
                                        width: 127,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(19),
                                          color: Color.fromRGBO(255, 46, 0, 1),
                                        ),
                                        child: Text(
                                          "Subscribe",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(19, 19, 19, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      options: FlutterCarouselOptions(
                        viewportFraction: 1,
                        floatingIndicator: false,
                        padEnds: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        showIndicator: false,
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: index == activeIndex ? 21 : 7,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == activeIndex
                                ? Color.fromRGBO(255, 61, 0, 1)
                                : Color.fromRGBO(159, 159, 159, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 18),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Discography",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(255, 46, 0, 1),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(248, 162, 69, 1),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 19),
                  SizedBox(
                    height: 178,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 119,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                "assets/Images/Rectangle 32.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Dead inside",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            Text(
                              "2020",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color.fromRGBO(132, 125, 125, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              activePage = 0;
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 140,
                                width: 119,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  "assets/Images/Rectangle 38.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "Alone",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color.fromRGBO(203, 200, 200, 1),
                                  ),
                                ),
                              ),
                              Text(
                                "2023",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color.fromRGBO(132, 125, 125, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 119,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                "assets/Images/Rectangle 39.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Heartless",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            Text(
                              "2023",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color.fromRGBO(132, 125, 125, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Popular singers",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(248, 162, 69, 1),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ],
          body: SingleChildScrollView(
            child: SizedBox(
              height: 160,
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 72,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/Images/Rectangle 34.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "2023",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " * ",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Easy Living",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert_rounded,
                          size: 35,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                        SizedBox(width: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 72,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/Images/Rectangle 40.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "2023",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " * ",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Easy Living",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert_rounded,
                          size: 35,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                        SizedBox(width: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 72,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/Images/Rectangle 34.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "2023",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " * ",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Easy Living",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert_rounded,
                          size: 35,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                        SizedBox(width: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 72,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/Images/Rectangle 40.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "2023",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " * ",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Easy Living",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert_rounded,
                          size: 35,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                        SizedBox(width: 25),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ][activePage],
      // TODO(AadityaAssalkar): Check how to add routes with navbar.
      // TODO(AadityaAssalkar): Check out persistent navbar
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorShape: null,
            overlayColor: WidgetStateProperty.all(
              Colors.transparent,
            ),
            indicatorColor: Colors.transparent,
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return GoogleFonts.abel(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromRGBO(157, 178, 206, 1),
                  ),
                );
              }
              return GoogleFonts.abel(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(157, 178, 206, 1),
                ),
              );
            }),
          ),
          child: NavigationBar(
            onDestinationSelected: (value) {
              setState(() {
                activePage = value;
              });
            },
            selectedIndex: activePage,
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
            destinations: [
              NavigationDestination(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/Vector.png"),
                ),
                selectedIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/Vector (1).png"),
                ),
                label: "Favorite",
              ),
              NavigationDestination(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/search.png"),
                ),
                label: "Search",
              ),
              NavigationDestination(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/linear.png"),
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/bag.png"),
                ),
                label: "Cart",
              ),
              NavigationDestination(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/user (2).png"),
                ),
                selectedIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset("assets/Images/user.png"),
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
