import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  Map<String, double> data = {
    "Food": 6.5,
    "Fuel": 6,
    "Medicine": 5,
    "Entertainment": 4.75,
    "Shopping": 3.25,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.menu_rounded,
          ),
        ),
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(33, 33, 33, 1),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                PieChart(
                  dataMap: data,
                  animationDuration: const Duration(milliseconds: 1000),
                  chartType: ChartType.ring,
                  chartRadius: 160,
                  ringStrokeWidth: 33,
                  colorList: const [
                    Color.fromRGBO(214, 3, 3, 0.7),
                    Color.fromRGBO(0, 148, 255, 0.7),
                    Color.fromRGBO(0, 174, 91, 0.7),
                    Color.fromRGBO(100, 62, 255, 0.7),
                    Color.fromRGBO(241, 38, 197, 0.7),
                  ],
                  centerWidget: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          "\$ 2550.00",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Divider(
                  thickness: 0.2,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 8,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 284,
                        height: 40,
                        margin: const EdgeInsets.symmetric(
                          vertical: 18,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: SvgPicture.asset(
                                "assets/SVG/food.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Food",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "\$ 650.00",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Icon(
                              Icons.navigate_next_rounded,
                              size: 16,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Divider(
                  thickness: 0.2,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "\$ 2,550.00",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
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
    );
  }
}
