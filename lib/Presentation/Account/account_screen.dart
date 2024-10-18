import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
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
                        child: Icon(Icons.menu,color:  Color(0xff007bff),size: 28,)),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Account',style: TextStyle(color:  Color(0xff007bff),fontSize: 15,fontWeight: FontWeight.w500),),
                         ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon:Image.asset('asserts/images/certificate.png',height: 25,color: Color(0xff007bff))),
                    IconButton(onPressed: (){}, icon:Icon(Icons.add,color: Color(0xff007bff),size: 30,)),
                    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert,color: Color(0xff007bff),size: 25,)),

                  ],
                ),

              ],),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 8,right: 8),
            decoration: BoxDecoration(
              color: Color(0xff2b2a2e),
            ),
            child: Column(children: [
              SizedBox(height: 15,),
              Image.asset('asserts/images/logo.png',height: 60,),
              Text('Text Subib',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
              Text('Fx Tradeo',style: TextStyle(color: Color(0xff007bff),),),
              SizedBox(height: 15,),
              Text('771227-UnityFX-Live',style: TextStyle(color: Colors.grey.shade600,),),
              Text('Access Server, Hedge',style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 40,),
                    Text('0.00 USD',style: TextStyle(color: Colors.grey,fontSize: 22),),
                    Icon(Icons.info_outline_rounded,color: Colors.grey,)
                  ],
                ),
              ),
              SizedBox(height: 15,)
            ],),
          ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,bottom: 5),
                child: Text('Connect to:',style: TextStyle(color: Colors.grey,),),
              )),
          Container(
            margin: EdgeInsets.only(left: 8,right: 8),
            padding: EdgeInsets.only(left: 10,right: 10),
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xff2b2a2e),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [
                  Image.asset('asserts/images/logo.png',height: 60,),
                  SizedBox(width: 10,),
                  Text('MetaTrader 5 Android Demo',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),

                ],
              ),
                Row(
                  children: [
                    SizedBox(width: 60),
                    Text('12345 - UnityFX-Live',style: TextStyle(color: Colors.grey),),
                  ],
                )
            ],),
          )
        ],
      ),
    );
  }
}
