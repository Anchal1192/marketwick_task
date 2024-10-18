import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketwick_app/Presentation/Chart/chart_screen.dart';

import '../HistoryScreen/positionScreen.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          margin: EdgeInsets.only(top: 35,left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: (){
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(Icons.menu,color:  Color(0xff3d72e3),size: 28,)),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Trade',style: TextStyle(color:  Color(0xff3d72e3),fontSize: 13,fontWeight: FontWeight.w500),),
                      Text('-19.21 USD',style: TextStyle(color:  Colors.redAccent,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  MenuAnchor(
                    style: MenuStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    builder: (BuildContext context, MenuController controller,
                        Widget? child) {
                      return IconButton(
                        onPressed: () {
                          if (controller.isOpen) {
                            controller.close();
                          } else {
                            controller.open();
                          }
                        },
                        icon: Image.asset('asserts/images/arr.png',
                            height: 25, color: Color(0xff007bff)),
                      );
                    },
                    menuChildren: List<MenuItemButton>.generate(4, (int index) {
                      List<String> currencyList = ['Order', 'Time', 'Symbol','Profit'];
                      return MenuItemButton(
                          onPressed: () =>
                              setState(() => selectedMenu = SampleItem.values[index]),
                          child: Row(
                            children: [
                              Text(
                                currencyList[index],
                                // Display currency name based on index
                                style: TextStyle(
                                    color: Colors.white), // White text for contrast
                              ),
                              SizedBox(width: 8,),
                              currencyList[index] == 'Time' ?  Icon(Icons.arrow_upward_sharp,color:Color(0xff007bff)):SizedBox()
                            ],
                          ));
                    }),
                  ),
                 // IconButton(onPressed: (){}, icon:Image.asset('asserts/images/arr.png',height: 25,color: Color(0xff007bff))),
                  IconButton(onPressed: (){}, icon:Image.asset('asserts/images/new.png',height: 25,color: Color(0xff007bff))),

                ],
              ),

            ],),
        ),
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
                      'Balance:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w800,fontSize: 14),
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
                      'Equity:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14),
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
                    left: 10, right: 10, bottom: 3),
                child: Row(
                  children: [
                    Text(
                      'Margin:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14),
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
                    left: 10, right: 10, bottom: 3),
                child: Row(
                  children: [
                    Text(
                      'Free margin:',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14),
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
                    left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Margin Level(%):',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14),
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
        ),
        SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Positions',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold,fontSize: 15),
          ),
        ),
        Divider(color: Color(0xff3b3a38)),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
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
                                'AUDNZD,',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              Text(
                                ' buy 0.038',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(color: Color(0xff007bff),
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '2404.45',
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
                                '2404.45',
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
                     Text('-4.07',style: GoogleFonts.robotoCondensed(textStyle: TextStyle(color: Color(0xffd11f1f),fontSize: 18,fontWeight: FontWeight.bold)),)
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey.shade700, // Customize the color of the divider
                  thickness: 0.0,     // Customize the thickness of the divider
                  indent: 0,         // Optional: Add padding to the left of the divider
                  endIndent: 0,      // Optional: Add padding to the right of the divider
                );
              },
            ),
          )
      ],),
    );
  }
}
