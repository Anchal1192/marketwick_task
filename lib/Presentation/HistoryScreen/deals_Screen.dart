import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketwick_app/Presentation/HistoryScreen/positionScreen.dart';

class DealsScreen extends StatefulWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xff121211),
              border: Border(
                bottom: BorderSide(
                  //                   <--- right side
                    color: Color(0xff3b3a38)),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 3),
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
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          DottedLine(
                            color:
                            Color(0xff3b3a38), // Custom color for dotted line
                            dotRadius: 1.0, // Radius of the dots
                            dotSpace: 6.0, // Customize spacing between dashes
                            lineWidth: 1.0, // Customize thickness of the line
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '0.00',
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10,bottom: 3),
                child: Row(
                  children: [
                    Text(
                      'Deposit:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white,  fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                      // style: TextStyle(
                      //     color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          DottedLine(
                            color:
                            Color(0xff3b3a38), // Custom color for dotted line
                            dotRadius: 1.0, // Radius of the dots
                            dotSpace: 6.0, // Customize spacing between dashes
                            lineWidth: 1.0, // Customize thickness of the line
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '0.00',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                  ],
                ),
              ), Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 3),
                child: Row(
                  children: [
                    Text(
                      'Swap:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                      // style: TextStyle(
                      //     color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          DottedLine(
                            color:
                            Color(0xff3b3a38), // Custom color for dotted line
                            dotRadius: 1.0, // Radius of the dots
                            dotSpace: 6.0, // Customize spacing between dashes
                            lineWidth: 1.0, // Customize thickness of the line
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '0.00',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Commission:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 14),
                      ),
                      // style: TextStyle(
                      //     color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          DottedLine(
                            color:
                            Color(0xff3b3a38), // Custom color for dotted line
                            dotRadius: 1.0, // Radius of the dots
                            dotSpace: 6.0, // Customize spacing between dashes
                            lineWidth: 1.0, // Customize thickness of the line
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '0.00',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],),
        )
      ],
    );
  }
}