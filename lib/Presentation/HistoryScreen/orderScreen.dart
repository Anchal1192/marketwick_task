import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketwick_app/Presentation/HistoryScreen/positionScreen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
                    'Filled:',
                    style: GoogleFonts.robotoSerif(
                      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 13),
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
                    '0',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
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
                    'Canceled:',
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
                    '0',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Total:',
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
                    '0',
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
