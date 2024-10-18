import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

import '../Home/addSymbol.dart';
import '../Home/selectedSymbols.dart';
class QuotesScreen extends StatefulWidget {
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  Widget build(BuildContext context) {
    final currencyPairs = [
      CurrencyPair(name: 'EURHUF', bid: "401.18", ask: 400.20, change: -0.16,time: "16:14:00",total: 20,rate:"+301"),
      CurrencyPair(name: 'EURNOK', bid: "11.7855", ask: 11.7964, change: 0.47,time: "08:14:00",total: 10,rate:"+1200"),
      CurrencyPair(name: 'EURPLN', bid: "4.3025", ask: 11.7964, change: 0.47,time: "09:15:00",total: 10,rate:"+99"),
      CurrencyPair(name: 'EURSEK', bid: "11.41", ask: 11.7964, change: 0.47,time: "12:13:34",total: 10,rate:"+56"),
      CurrencyPair(name: 'USDCNH', bid: "7.12", ask: 11.7964, change: 0.47,time: "11:14:00",total: 10,rate:"-12"),
      CurrencyPair(name: 'USDMXN', bid: "19.90", ask: 11.7964, change: 0.47,time: "11:14:12",total: 10,rate:"-27"),
      CurrencyPair(name: 'USDNOK', bid: "10.9230", ask: 11.7964, change: 0.47,time: "10:09:00",total: 10,rate:"-3545"),
      CurrencyPair(name: 'USDPLN', bid: "10.9230", ask: 11.7964, change: 0.47,time: "16:15:00",total: 10,rate:"-130"),
      CurrencyPair(name: 'USDRUB', bid: "3.96", ask: 11.7964, change: 0.47,time: "16:14:00",total: 20,rate:"-256"),
      CurrencyPair(name: 'USDSEH', bid: "93.34", ask: 11.7964, change: 0.47,time: "16:14:00",total: 20,rate:"+26"),
      CurrencyPair(name: 'AUDNZD', bid: "11.7855", ask: 11.7964, change: 0.47,time: "16:14:00",total: 20,rate:"+25"),
      CurrencyPair(name: 'EURUSD', bid: "11.7855", ask: 11.7964, change: 0.47,time: "16:14:00",total: 20,rate:"-256"),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 35),
        child: Column(
          children: [
            Container(
             // margin: EdgeInsets.only(top: 60,left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                InkWell(
                  onTap:(){
                    Scaffold.of(context).openDrawer();
                  },
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.menu,color:  Color(0xff007bff),size: 28,),
                        SizedBox(width: 5,),
                        Text('Quotes',style: TextStyle(color:  Color(0xff007bff),fontSize: 16,fontWeight: FontWeight.w500),),
                      ],
                    ),
                ),
                    Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddSymbol()));
                        }, icon: Icon(Icons.add,color: Color(0xff007bff),size: 30,)),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedSymbols()));

                        }, icon:Image.asset('asserts/images/edit_icon.png')),
                      ],
                    ),

              ],),
            ),
            SizedBox(height: 10,),
            Expanded(child: CurrencyPairList(currencyPairs: currencyPairs)),
          ],
        ),
      ),
    );
  }
}


class CurrencyPair {
  final String name;
  final String bid;
  final double ask;
  final double change;
  final String time;
  final int total;
  final String rate;

  CurrencyPair({
    required this.name,
    required this.bid,
    required this.ask,
    required this.change,
    required this.time,
    required this.total,
    required this.rate,
  });
}

class CurrencyPairList extends StatelessWidget {
  final List<CurrencyPair> currencyPairs;

  const CurrencyPairList({
    Key? key,
    required this.currencyPairs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: currencyPairs.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final currencyPair = currencyPairs[index];
        String mainPart = currencyPair.bid.length > 2 ? currencyPair.bid.substring(0, currencyPair.bid.length - 2) : currencyPair.bid;
        String lastTwoDigits =  currencyPair.bid.length > 2 ?  currencyPair.bid.substring(currencyPair.bid.length - 2) : "";
        Color color;
        if (index % 4 == 0 || index % 4 == 1) { // More blue
          color = Color(0xff007bff);
        } else if (index % 4 == 2) { // Some red
          color = Color(0xffef5350);
        } else { // Some grey
          color = Colors.grey;
        }


        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${currencyPair.rate}',
                        style: TextStyle(
                            color: Colors.grey,fontSize: 13
                        ),),
                      SizedBox(width: 5,),
                      Text(
                        '${currencyPair.change.toStringAsFixed(2)}%',
                        style: TextStyle(
                          color: currencyPair.change > 0 ?Color(0xff007bff) : color = Color(0xffef5350),fontSize: 13,fontWeight: FontWeight.w500
                        ),),
                    ],
                  ),
                  Text(currencyPair.name,style:GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.white70,fontSize: 16,fontWeight: FontWeight.w600)
        )),
                  Row(
                    children: [
                      Text('${currencyPair.time}',style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 8,),
                      Image.asset('asserts/images/step.png',height: 12,),
                      // Transform.rotate(
                      //   angle: math.pi / 2, // Rotate 90 degrees (in radians)
                      //   child: Text(
                      //     '][', // The text you want to rotate
                      //     style: TextStyle(fontSize: 10,color: Colors.grey), // Adjust size as needed
                      //   ),),
                      SizedBox(width: 8,),
                      Text('${currencyPair.total}',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],
              ),


              Row(
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                // textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 24, // Base font size for the main text
                            color: Colors.black, // Text color
                          ),
                          children: <InlineSpan>[  // Use InlineSpan instead of TextSpan
                            TextSpan(
                              text: mainPart,
                              style: TextStyle(fontSize: 17,color: color,fontWeight: FontWeight.w500), // Main part
                            ),
                            TextSpan(
                              text: lastTwoDigits, // The first digit of lastTwoDigits
                              style: TextStyle(fontSize: 23,color: color,fontWeight: FontWeight.bold), // Larger font size for this part
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -16), // Adjust the offset to position superscript
                                child: Text(
                                  lastTwoDigits[1], // The second digit, shown as superscript
                                  textScaleFactor: 1, // Scale down the superscript
                                  style: TextStyle(color: color,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('L:${currencyPair.ask}',style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      RichText(
                        text: TextSpan(
                          // style: TextStyle(
                          //   fontSize: 24, // Base font size for the main text
                          //   color: Colors.black, // Text color
                          //),
                          children: <InlineSpan>[  // Use InlineSpan instead of TextSpan
                            TextSpan(
                              text: mainPart,
                              style: TextStyle(fontSize: 17,color: color,fontWeight: FontWeight.w500), // Main part
                            ),
                            TextSpan(
                              text: lastTwoDigits, // The first digit of lastTwoDigits
                              style: TextStyle(fontSize: 23,color: color,fontWeight: FontWeight.bold), // Larger font size for this part
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -16), // Adjust the offset to position superscript
                                child: Text(
                                  lastTwoDigits[1], // The second digit, shown as superscript
                                  textScaleFactor: 1, // Scale down the superscript
                                  style: TextStyle(color:color,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('R:${currencyPair.ask}',style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),

            ],
          ),
        );
      },
    );
  }
  String extractBase(double value) {
    String valueStr = value.toStringAsFixed(3); // Ensure 3 decimal places
    return valueStr.substring(0, valueStr.length - 2);
  }

  String extractLastTwoDigits(double value) {
    String valueStr = value.toStringAsFixed(3);
    return valueStr.substring(valueStr.length - 2);
  }

}