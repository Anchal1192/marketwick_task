import 'package:flutter/material.dart';

class IndicatorChartScreen extends StatefulWidget {
  const IndicatorChartScreen({Key? key}) : super(key: key);

  @override
  State<IndicatorChartScreen> createState() => _IndicatorChartScreenState();
}

class _IndicatorChartScreenState extends State<IndicatorChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 45,left: 8,bottom: 10),
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
                      Text('Indicators on EURUSD, M5',style: TextStyle(color:  Color(0xff3d72e3),fontSize: 13,fontWeight: FontWeight.w500),),
                       ],
                  ),

                ],
              ),
              Row(
                children: [
                  Icon(Icons.delete,color:Color(0xff007bff)),
                  SizedBox(width: 10,),
                ],
              ),

            ],),
        ),
        Expanded(
          child: Container(
            color: Color(0xff121211),
            child: ListTile(
              leading: Text('MAIN CHART',style: TextStyle(color:  Color(0xff007bff),fontSize: 15),),
              trailing:Image.asset('asserts/images/f.png',height: 25,color: Color(0xff007bff))
            ),
          ),
        )
      ],),
    );
  }
}
