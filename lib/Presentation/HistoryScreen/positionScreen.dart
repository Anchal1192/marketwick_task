import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PositionScreen extends StatefulWidget {
  const PositionScreen({Key? key}) : super(key: key);

  @override
  State<PositionScreen> createState() => _PositionScreenState();
}

class _PositionScreenState extends State<PositionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Profit:',
                     style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                      // style: TextStyle(
                      //     color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 1.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Credit:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white,  fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 2.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Deposit:',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.white,  fontWeight: FontWeight.w900,fontSize: 14),
                        ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 2.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Withdrawal:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white,  fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 2.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Swap:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 2.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Commission:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 2.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Balance:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white,  fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DottedLine(
                        color:
                            Color(0xff3b3a38), // Custom color for dotted line
                        dotRadius: 1.0, // Radius of the dots
                        dotSpace: 6.0, // Customize spacing between dashes
                        lineWidth: 2.0, // Customize thickness of the line
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '534.23',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white,  fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Color(0xff121211),
              border: Border(
                bottom: BorderSide(
                    //                   <--- right side
                    color: Color(0xff3b3a38)),
              )),
        ),
               SizedBox(height: 10,),
        Expanded(
          child: ListView.separated(
            itemCount: 20,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'XAUUSD,',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.w900,fontSize: 13
                                   ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'buy 0.038',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(color:  Color(0xff007bff),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '2 404.45',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset('asserts/images/arrow.png',height: 10,color: Colors.grey,),
                            SizedBox(width: 5),
                            Text(
                              '2 404.45',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '2024.08.05 18:15:40',
                          style: TextStyle(
                              color: Colors.grey,
                              //fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        Text(
                          '38.00',
                          style: TextStyle(
                              color:  Color(0xff007bff),
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey, // Customize the color of the divider
                thickness: 0.0,     // Customize the thickness of the divider
                indent: 0,         // Optional: Add padding to the left of the divider
                endIndent: 0,      // Optional: Add padding to the right of the divider
              );
            },
          ),
        )

      ],
    );
  }
}

class DottedLine extends StatelessWidget {
  final Color color;
  final double dotRadius;
  final double dotSpace;
  final double lineWidth;

  DottedLine({
    required this.color,
    this.dotRadius = 4.0, // Radius of the circle
    this.dotSpace = 4.0, // Space between each dot
    this.lineWidth = 1.0, // Not used in circles, but kept for consistency
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dotCount = (boxWidth / (2 * dotRadius + dotSpace))
            .floor(); // Number of circles
        return Flex(
          children: List.generate(dotCount, (_) {
            return Container(
              width: 2 * dotRadius, // Diameter of the circle
              height: 2 * dotRadius, // Diameter of the circle
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle, // Makes it a circle
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
