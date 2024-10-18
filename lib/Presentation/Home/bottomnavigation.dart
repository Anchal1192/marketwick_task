import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Account/account_screen.dart';
import '../Chart/chart_screen.dart';
import '../Community/community.dart';
import '../Message/message_screen.dart';
import '../Ouotes/ouotes_Screen.dart';
import '../Trade/trade.dart';
import '../history_screen.dart';
import '../newScreen.dart';
import 'home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> with TickerProviderStateMixin {
  int _currIndex = 0;
  late AnimationController _hide;
  late List<AnimationController> _faders;
  late List<Key> _destinationKeys;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<Widget> widgetList = [
    QuotesScreen(),
    ChartScreen(),
    TradeScreen(),
    HistoryScreen(),
    MessageScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _faders = widgetList.map<AnimationController>((item) {
      return AnimationController(
        duration: Duration(milliseconds: 100),
        vsync: this,
      );
    }).toList();
    _faders[_currIndex].value = 1.0;
    _destinationKeys =
        List<Key>.generate(widgetList.length, (int index) => GlobalKey())
            .toList();
    _hide = AnimationController(vsync: this, duration: kThemeAnimationDuration);
  }


  @override
  Widget build(BuildContext context) {
    List<ItemClass> allItems = <ItemClass>[
      const ItemClass(
          0,
          'Quotes',
         Icon(Icons.swap_vert,size: 27,)),
       ItemClass(
          1,
          'Charts',
           _currIndex != 1
               ?    Image.asset('asserts/images/candle.png',height: 27,):
           Image.asset('asserts/images/bottom_candle.png',height: 27,)
      ),
       ItemClass(
          2,
          'Trade',
    _currIndex != 2 ?   Image.asset('asserts/images/trade.png',height: 27,):
    Image.asset('asserts/images/bottom_trade.png',height: 27,)
      ) ,
      const ItemClass(
          3,
          'History',
          Icon(Icons.history,size: 24,))  ,
       ItemClass(
          4,
          'Message',
           _currIndex != 4 ?  Image.asset('asserts/images/message.png',height: 27,):Image.asset('asserts/images/bottom_message.png',height: 27,))
    ];
    return WillPopScope(
      onWillPop: () async {
        if (_currIndex == 0) {
          return true;
        } else {
          setState(() {
            _currIndex = 0;
          });
          return false;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        key: _scaffoldKey,


        // appBar: AppBar(
        //   centerTitle: false,
        //   backgroundColor: Colors.black,
        //   leading: Row(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Icon(Icons.menu,color: Colors.blueAccent,),
        //       SizedBox(width: 5,),
        //       Text('Quotes',style: TextStyle(color: Colors.blueAccent),),
        //     ],
        //   ),
        //   actions: [
        //     IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.blueAccent,size: 30,)),
        //     IconButton(onPressed: (){}, icon:Image.asset('asserts/images/edit_icon.png')),
        //   ],
        // ),
        drawer: Drawer(
          backgroundColor: Colors.black,
                child: Container(
                  margin: EdgeInsets.only(top: 60,left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Image.asset('asserts/images/logo_img.png',height: 50,),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('T5 test',style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,fontSize: 15)
                          ),),
                          Text('771227 - UnityFX-Live',style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.grey)
                          ),),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
                            },
                            child: Text('Manage accounts',style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.blueAccent)
                            ),),
                          )
                        ],)
                      ],),
                    SizedBox(height: 15,),
                    Divider(color: Color(0xff3f4252),),
                      SizedBox(height: 8,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            _scaffoldKey.currentState?.openEndDrawer();
                            _currIndex = 2;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Image.asset('asserts/images/trade_icon.png',height: 25,),
                          SizedBox( width: 10,),
                          Text('Trade',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                        ],),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                        //  NewsScreen
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> NewsScreen()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Image.asset('asserts/images/news.png',height: 25,),
                          SizedBox( width: 25,),
                          Text('News',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                        ],),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset('asserts/images/mail.png',height: 23,color: Colors.grey.shade500,),
                        SizedBox( width: 25,),
                        Text('Mailbox',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                      ],),
                      SizedBox(height: 20,),
                      Row(children: [
                        Image.asset('asserts/images/journel.png',height: 25,),
                        SizedBox( width: 25,),
                        Text('Journal',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                      ],),
                      SizedBox(height: 20,),
                      Row(children: [
                        Image.asset('asserts/images/setting.png',height: 23,color: Colors.grey.shade500,),
                        SizedBox( width: 25,),
                        Text('Settings',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                      ],),
                      SizedBox(height: 20,),
                      Row(children: [
                        Image.asset('asserts/images/calender.png',height: 23,color: Colors.grey.shade500,),
                        SizedBox( width: 25,),
                        Text('Economic calender',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                      SizedBox(width: 8,),
                        Container(
                      width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff007bff)),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Ads',style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff007bff,),fontSize: 10)),),
                        )
                      ],),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityScreen()));
                        },
                        child: Row(children: [
                          Image.asset('asserts/images/traders.png',height: 25,),
                          SizedBox( width: 25,),
                          Text('Traders Community',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                        ],),
                      ),
                      SizedBox(height: 20,),
                      Row(children: [
                        Image.asset('asserts/images/about.png',height: 25,),
                        SizedBox( width: 25,),
                        Text('About',style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,)),),
                      ],),
                      // iconText(title: 'Trade',image: 'asserts/images/trade_icon.png'),
                      // iconText(title: 'News',image: 'asserts/images/news.png'),
                      // iconText(title: 'Mailbox',image: 'asserts/images/mail.png'),
                      // iconText(title: 'Journal',image: 'asserts/images/journel.png'),
                      // iconText(title: 'Settings',image: 'asserts/images/setting.png'),
                      // iconText(title: 'Economic calender',image: 'asserts/images/calender.png'),
                      // iconText(title: 'Traders Community',image: 'asserts/images/traders.png'),
                      // iconText(title: 'About',image: 'asserts/images/about.png'),
                  ],),
                ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: allItems.map(
                (item) {
              final Widget view = FadeTransition(
                opacity: _faders[item.index].drive(
                  CurveTween(curve: Curves.fastOutSlowIn),
                ),
                child: KeyedSubtree(
                  key: _destinationKeys[item.index],
                  child: widgetList[item.index],
                ),
              );
              if (item.index == _currIndex) {
                _faders[item.index].forward();
                return view;
              } else {
                _faders[item.index].reverse();
                if (_faders[item.index].isAnimating) {
                  return IgnorePointer(child: view);
                }
                return Offstage(child: view);
              }
            },
          ).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currIndex,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: (index) {
            setState(() {
              _currIndex = index;
            });
            },
          iconSize: 20,
          selectedItemColor:Color(0xff007bff),
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 13,
          selectedFontSize: 13,
          items: allItems.map((item) {
            return BottomNavigationBarItem(
              icon: item.icon,
              label: item.label,
            );
          }).toList(),
        ),
      ),
    );
  }
  @override
  void dispose() {
    for (AnimationController controller in _faders) controller.dispose();
    _hide.dispose();
    super.dispose();
  }

  Widget iconText({required String title,required String image}){
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(image,height: 25,),
  title: Text(title,style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600,)),),
    );
  }
}
class ItemClass {
  const ItemClass(this.index, this.label, this.icon);

  final int index;
  final String label;
  final icon;
}