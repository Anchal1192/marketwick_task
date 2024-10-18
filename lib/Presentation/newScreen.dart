import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        leading: Icon(Icons.menu,color:Color(0xff007bff)),
        title: Text('News',style: TextStyle(color: Color(0xff007bff),fontSize: 18),),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('asserts/images/news.png', height: 100,width: 100,),
            Text('No news',style: TextStyle(color: Colors.grey),),
          ],),
        ),
      ),
    );
  }
}
