import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:svg_flutter/svg_flutter.dart';

class UIChallenge extends StatefulWidget {
  const UIChallenge({super.key});

  @override
  State<UIChallenge> createState() => _UIChallengeState();
}

class _UIChallengeState extends State<UIChallenge> {
  bool designerPage = false;

  @override
  Widget build(BuildContext context) {
    if (!designerPage) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: Image.asset("assets/images/menu.png"),
          actions: [
            Image.asset("assets/images/bell.png"),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 7,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to New",
                    style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                        fontSize: 26.98,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    "Educourse",
                    style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: GoogleFonts.inter(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 20,
                      ),
                      hintText: "Enter your Keyword",
                      hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(143, 143, 143, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Image.asset("assets/images/search.png"),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(32),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 37,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course For You",
                          style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    designerPage = true;
                                  });
                                },
                                child: Container(
                                  height: 262,
                                  width: 190,
                                  margin: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(197, 4, 98, 1),
                                        Color.fromRGBO(80, 3, 112, 1),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "UX Designer from Scratch.",
                                          style: GoogleFonts.jost(
                                            textStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 24,
                                        ),
                                        Image.asset(
                                            "assets/images/uxdesigner.png"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 262,
                                width: 190,
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(0, 77, 228, 1),
                                      Color.fromRGBO(1, 47, 135, 1),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Design Thinking The Beginner",
                                        style: GoogleFonts.jost(
                                          textStyle: const TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Image.asset("assets/images/objects.png"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Text(
                          "Course By Category",
                          style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 68,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(25, 0, 56, 1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child:
                                          Image.asset("assets/images/ui.png"),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "UI/UX",
                                      style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 68,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(25, 0, 56, 1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                          "assets/images/visual.png"),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "VISUAL",
                                      style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 68,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(25, 0, 56, 1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                          "assets/images/illustration.png"),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "ILLUSTRATION",
                                      style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 68,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(25, 0, 56, 1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                          "assets/images/photo.png"),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "PHOTO",
                                      style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              setState(() {
                designerPage = false;
              });
            },
            child: const Icon(
              Icons.arrow_back,
              size: 26,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromRGBO(197, 4, 98, 1),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(197, 4, 98, 1),
                Color.fromRGBO(80, 3, 112, 1),
              ],
              stops: [
                0.0,
                0.3,
              ],
            ),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 38,
                      right: 44,
                      top: 0,
                      bottom: 11,
                    ),
                    child: Text(
                      "UX Designer from Scratch.",
                      style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 32.61,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 38,
                      right: 44,
                      top: 0,
                      bottom: 27,
                    ),
                    child: Text(
                      "Basic guideline & tips & tricks for how to become a UX designer easily.",
                      style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(228, 205, 225, 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 38,
                      top: 0,
                      right: 26,
                      bottom: 32,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(0, 82, 178, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          child: const Icon(
                            Icons.person_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Auther:",
                          style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(190, 154, 197, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          "Jenny",
                          style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "4.8 ⭐ ",
                          style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          "(20 review)",
                          style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(190, 154, 197, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListView.separated(
                      itemCount: 10,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          width: 300,
                          height: 70,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 46,
                                height: 60,
                                margin: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Color.fromRGBO(230, 239, 239, 1),
                                ),
                                child: Image.asset("assets/images/youtube.png"),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 6,
                                  top: 12,
                                  right: 45,
                                  bottom: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Introduction",
                                      style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text ...",
                                      style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(143, 143, 143, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
