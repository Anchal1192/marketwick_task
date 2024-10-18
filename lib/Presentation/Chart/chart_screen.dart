import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

import 'indicatorchart.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  late List<ChartSampleData> _chartData;
  late TrackballBehavior _trackballBehavior;
  bool isChecked1 = false;

  @override
  void initState() {
    _chartData = getChartData();
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    super.initState();
  }

  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Color(0xff007bff),
              size: 28,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset('asserts/images/t.png',
                  height: 25, color: Color(0xff007bff))),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IndicatorChartScreen()));
              },
              icon: Image.asset('asserts/images/f.png',
                  height: 25, color: Color(0xff007bff))),
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
                icon: Image.asset('asserts/images/dollar.png',
                    height: 25, color: Color(0xff007bff)),
              );
            },
            menuChildren: List<MenuItemButton>.generate(9, (int index) {
              List<String> currencyList = ['EURHUF', 'EURONOK', 'EURPLN','EURSEK','USDCNH','USDMXN','USDPLN','USDRUB','USDSEK'];
              return MenuItemButton(
                  onPressed: () =>
                      setState(() => selectedMenu = SampleItem.values[index]),
                  child: Text(
                    currencyList[index],
                    // Display currency name based on index
                    style: TextStyle(
                        color: Colors.white), // White text for contrast
                  ));
            }),
          ),

          PopupMenuButton<int>(
            padding: EdgeInsets.zero,
            color: Colors.black,
            icon: Image.asset('asserts/images/folder.png',
                height: 25, color: Color(0xff007bff)),
            onSelected: (int result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              PopupMenuItem<int>(
                value: 1,
                child: Text(
                  'Charts',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('New Window',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                  value: 3,
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value ?? false;
                          });
                        },
                      ),
                      Text('EURUSD,M5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400)),
                      Spacer(),
                      Icon(
                        Icons.menu,
                        color: Colors.grey,
                      )
                    ],
                  )),
              PopupMenuItem<int>(
                  value: 4,
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xff007bff),
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Remove',
                      style: TextStyle(color: Colors.white54,fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ],
          ),
          // IconButton(onPressed: (){}, icon:Image.asset('asserts/images/dollar.png',height: 25,color: Color(0xff007bff))),
          // IconButton(
          //     onPressed: () {},
          //     icon: Image.asset('asserts/images/folder.png',
          //         height: 25, color: Color(0xff007bff))),
          IconButton(
              onPressed: () {},
              icon: Image.asset('asserts/images/new.png',
                  height: 25, color: Color(0xff007bff))),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SfCartesianChart(
              //title: ChartTitle(text: 'EUR/USD M5'),
              legend: Legend(isVisible: false),
              trackballBehavior: _trackballBehavior,
              series: <CandleSeries>[
                CandleSeries<ChartSampleData, DateTime>(
                  dataSource: _chartData,
                  name: 'EUR/USD',
                  xValueMapper: (ChartSampleData data, _) => data.x,
                  lowValueMapper: (ChartSampleData data, _) => data.low,
                  highValueMapper: (ChartSampleData data, _) => data.high,
                  openValueMapper: (ChartSampleData data, _) => data.open,
                  closeValueMapper: (ChartSampleData data, _) => data.close,
                  bearColor: Colors.red,
                  bullColor: Color(0xff0f9294),
                  enableSolidCandles: true,
                ),
              ],
              primaryXAxis: DateTimeAxis(
                dateFormat: DateFormat('d MMM HH:mm'),
                // Format to show day, month, hour, and minute (e.g., 13 Oct 14:00)
                intervalType: DateTimeIntervalType.minutes,
                interval: 5,
                // Optional: Adjust this based on the data intervals
                majorGridLines: MajorGridLines(
                  width: 1,
                  color: Colors.white12, // This creates dotted/dashed lines
                  dashArray: <double>[5, 5],
                ),
              ),
              primaryYAxis: NumericAxis(
                  minimum: 1.0900,
                  // Set the minimum value of Y-axis based on your data
                  maximum: 1.0918,
                  // Set the maximum value of Y-axis based on your data
                  interval: 0.0001,
                  // Set the interval for better precision, depending on your data points, // Ensures the Y-axis shows values like 1.0900, 1.0902, etc.
                  majorGridLines: MajorGridLines(
                    width: 1,
                    dashArray: <double>[5, 5],
                    color: Colors.white12,
                    // Adjust the width of the grid lines
                  ),
                  opposedPosition:
                      true // Optional: Removes grid lines for a cleaner look
                  ),
            ),
          ),
          Positioned(
            left: 15, // Adjust left position
            top: 15, // Adjust top position
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EUR/USD',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Euro vs Us Dollar',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<ChartSampleData> getChartData() {
    return <ChartSampleData>[
      ChartSampleData(
          x: DateTime(2024, 10, 15, 13, 35),
          open: 1.0912,
          high: 1.0916,
          low: 1.0909,
          close: 1.091),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 13, 40),
          open: 1.0915,
          high: 1.0918,
          low: 1.0910,
          close: 1.0910),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 13, 45),
          open: 1.0910,
          high: 1.0912,
          low: 1.0906,
          close: 1.0908),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 13, 50),
          open: 1.0908,
          high: 1.0911,
          low: 1.0905,
          close: 1.0906),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 13, 55),
          open: 1.0906,
          high: 1.0910,
          low: 1.0902,
          close: 1.0909),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 00),
          open: 1.0909,
          high: 1.0913,
          low: 1.0907,
          close: 1.0912),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 05),
          open: 1.0912,
          high: 1.0915,
          low: 1.0908,
          close: 1.0909),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 10),
          open: 1.0909,
          high: 1.0914,
          low: 1.0906,
          close: 1.0910),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 15),
          open: 1.0910,
          high: 1.0915,
          low: 1.0905,
          close: 1.0907),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 20),
          open: 1.0907,
          high: 1.0911,
          low: 1.0903,
          close: 1.0905),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 25),
          open: 1.0905,
          high: 1.0909,
          low: 1.0902,
          close: 1.0908),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 30),
          open: 1.0908,
          high: 1.0912,
          low: 1.0904,
          close: 1.0910),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 35),
          open: 1.0910,
          high: 1.0914,
          low: 1.0907,
          close: 1.0912),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 40),
          open: 1.0912,
          high: 1.0917,
          low: 1.0909,
          close: 1.0914),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 45),
          open: 1.0914,
          high: 1.0918,
          low: 1.0911,
          close: 1.0915),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 50),
          open: 1.0915,
          high: 1.0919,
          low: 1.0912,
          close: 1.0917),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 14, 55),
          open: 1.0917,
          high: 1.0920,
          low: 1.0914,
          close: 1.0919),
      ChartSampleData(
          x: DateTime(2024, 10, 15, 15, 00),
          open: 1.0919,
          high: 1.0923,
          low: 1.0916,
          close: 1.0920),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({
    this.x,
    this.open,
    this.close,
    this.low,
    this.high,
  });

  final DateTime? x;
  final double? open;
  final double? close;
  final double? low;
  final double? high;
}
