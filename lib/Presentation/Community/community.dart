import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(  backgroundColor: Colors.blueAccent.shade100,
      iconTheme: IconThemeData(color: Colors.white),
        title: Text('Archive',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
      ),
      body: Column(children: [
        Image.asset('asserts/images/mql.png',height: 40,),
        SizedBox(height: 20,),
        Text("Join trader's community \n www.mql5.com",
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(textStyle: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )),),
     SizedBox(height: 50,),
        Container(
          height: 55,
          margin: EdgeInsets.only(left: 25,right: 25,top: 25,bottom: 10),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5)
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Login', // Label for the TextField
              labelStyle: TextStyle(color: Colors.white,fontSize: 12), // Label text style (optional)
              border: InputBorder.none, // Hide the underline
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Text('Latin characters and digits without space',style: TextStyle(color: Colors.white,),),
        Container(
          height: 55,
          margin: EdgeInsets.only(left: 25,right: 25,top:20,bottom: 10),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5)
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Password', // Label for the TextField
              labelStyle: TextStyle(color: Colors.white,fontSize: 12), // Label text style (optional)
              border: InputBorder.none,
              suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xff007bff),)// Hide the underline
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Text('Authorize and chat with traders right here and now',style: TextStyle(color: Colors.white,),),
        Container(
          height: 45,
          margin: EdgeInsets.only(left: 25,right: 25,top:20,bottom: 10),
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.amber.shade500,
              borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                offset: Offset(0, 4), // Move shadow downwards (x, y)
                blurRadius: 6, // How blurry the shadow is
              ),
            ],
          ),
          child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        Text('Or',style: TextStyle(color: Colors.white,),),
        Container(
          height: 45,
          margin: EdgeInsets.only(left: 25,right: 25,top:20,bottom: 10),
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                offset: Offset(0, 4), // Move shadow downwards (x, y)
                blurRadius: 6, // How blurry the shadow is
              ),
            ],
          ),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.asset('asserts/images/google.png',height: 25,),
          Text('Sign in with Google',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
             SizedBox(width: 50,)
          ],),
        ),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("If you don't have an account, please ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            Text("register",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
          ],
        ),
        Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Vist",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            Text("mql5.com",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
            Text("to access all community services.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 15,)
      ],),
    );
  }
}
