import 'package:flutter/material.dart';

import 'Chart/chart_screen.dart';
import 'HistoryScreen/deals_Screen.dart';
import 'HistoryScreen/orderScreen.dart';
import 'HistoryScreen/positionScreen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  SampleItem? selectedMenu;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Length of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
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
                        Text('History',style: TextStyle(color:  Color(0xff3d72e3),fontSize: 13,fontWeight: FontWeight.w500),),
                        Text('All symbols',style: TextStyle(color:  Color(0xff3d72e3),fontSize: 16,fontWeight: FontWeight.w500),),
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
                          icon: Image.asset('asserts/images/dollar.png',
                              height: 25, color: Color(0xff007bff)),
                        );
                      },
                      menuChildren: List<MenuItemButton>.generate(1, (int index) {
                        List<String> currencyList = ['All symbols',];
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
                             ],
                            ));
                      }),
                    ),
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
                      menuChildren: List<MenuItemButton>.generate(7, (int index) {
                        List<String> currencyList = ['Symbol', 'Ticket', 'Type','Volume','Open time','Close time','Profit'];
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
                                currencyList[index] == 'Open time' ?  Icon(Icons.arrow_upward_sharp,color:Color(0xff007bff)):SizedBox()
                              ],
                            ));
                      }),
                    ),
                   // IconButton(onPressed: (){}, icon:Image.asset('asserts/images/dollar.png',height: 25,color: Color(0xff007bff))),
                   // IconButton(onPressed: (){}, icon:Image.asset('asserts/images/arr.png',height: 25,color: Color(0xff007bff))),
                  //  IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month,color: Color(0xff007bff),size: 25,)),
                    PopupMenuButton<int>(
                      padding: EdgeInsets.zero,
                      color: Colors.black,
                      icon: Icon(Icons.calendar_month,color: Color(0xff007bff),size: 25,),
                      onSelected: (int result) {},
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                        PopupMenuItem<int>(
                          value: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.calendar_month,color: Colors.grey,),
                              SizedBox(width: 8,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                        color: Colors.grey, fontWeight: FontWeight.bold)),

                                    Text(
                                      '10/18/24',
                                      style: TextStyle(
                                          color: Colors.grey, ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 40,),
                              Icon(Icons.check,color: Color(0xff007bff) ,)
                            ],
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.calendar_month_outlined,color: Colors.grey,),
                              SizedBox(width: 8,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Last Week',
                                      style: TextStyle(
                                          color: Colors.grey, fontWeight: FontWeight.bold)),

                                  Text(
                                    '10/11/24 - 10/18/24',
                                    style: TextStyle(
                                      color: Colors.grey, ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.calendar_today,color: Colors.grey,),
                              SizedBox(width: 8,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Last Month',
                                      style: TextStyle(
                                          color: Colors.grey, fontWeight: FontWeight.bold)),

                                  Text(
                                    '10/11/24 - 10/18/24',
                                    style: TextStyle(
                                      color: Colors.grey, ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),

              ],),
          ),
          Container(
            color: Colors.black, // Add background color if needed
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: _tabController,
              labelColor: Colors.white70,
              unselectedLabelColor: Colors.grey.shade700,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              //labelPadding: EdgeInsets.symmetric(horizontal: 30.0),
              tabs: [
                Tab(text: "POSITIONS",),
                Tab(text: "ORDERS",),
                Tab(text: "DEALS",),
              ],
            ),
          ),

          // Expanded TabBarView to take remaining screen space
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PositionScreen(),
                OrderScreen(),
                DealsScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }


}


class DottedTabIndicator extends Decoration {
  final BoxPainter _painter;

  DottedTabIndicator({required Color color})
      : _painter = _DottedLinePainter(color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _DottedLinePainter extends BoxPainter {
  final Paint _paint;

  _DottedLinePainter(Color color)
      : _paint = Paint()
    ..color = color
    ..strokeWidth = 2
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final double width = cfg.size!.width;
    final double height = cfg.size!.height;
    final Offset start = Offset(offset.dx, height + 5); // Position the line below the tab
    final Offset end = Offset(offset.dx + width, height + 5);

    // Draw the dotted line
    double dashWidth = 4.0;
    double dashSpace = 4.0;
    double startX = start.dx;

    while (startX < end.dx) {
      canvas.drawLine(Offset(startX, start.dy), Offset(startX + dashWidth, end.dy), _paint);
      startX += dashWidth + dashSpace;
    }
  }
}
