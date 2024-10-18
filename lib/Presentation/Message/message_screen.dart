import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
                        Text('Message',style: TextStyle(color:  Color(0xff007bff),fontSize: 16,fontWeight: FontWeight.w500),),
                        ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        showAlertDialog(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(1),
                       // alignment: Alignment.center,
                          decoration: BoxDecoration(
                             color: Color(0xff007bff),
                            borderRadius: BorderRadius.circular(3)
                          ),
                          child: Text('MQID',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10))),
                    ),
                    SizedBox(width: 8,),
                    IconButton(onPressed: (){}, icon:Image.asset('asserts/images/search.png',height: 25,color: Color(0xff007bff))),

                  ],
                ),

              ],),
          ),
      Expanded(
        child: Container(
          color: Color(0xff121211),
        child: Column(children: [
          SizedBox(height: 200,),
          Center(child: Image.asset('asserts/images/message_img.png',color: Colors.white,height: 130,)),
          Center(child: Text('No message',style: TextStyle(fontSize: 15,color: Colors.grey),))
        ],),),
      )

      ],),
      bottomNavigationBar: Container(
        height: 45,
        decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                //                   <--- right side
                  color: Color(0xff3b3a38)),
            )
        ),
        child: Row(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 20,top: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.amber.shade400
              ),
              child: Text('REGISTER',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text('SIGN IN',style: TextStyle(color: Color(0xff007bff),fontWeight: FontWeight.bold),),
          ),
        ],),
      ),
    );
  }


  void showAlertDialog(BuildContext context) {
    // Create the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),  // Rounded corners
      ),
      title: Text("MetaQuotes ID"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My ID: null"),
          SizedBox(height: 10,),
          Text("Use this ID to send messages to the device via notify service."),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text("COPY",style: TextStyle(color: Color(0xff007bff),)),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text("OK",style: TextStyle(color: Color(0xff007bff),)),
        ),
      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          width: 600,  // Set the desired width (greater than height for a square)
          height: 300, // Set the desired height to create a square shape
          child: alert,
        );
      },
    );
  }

}
