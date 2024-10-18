import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddSymbol extends StatefulWidget {
  const AddSymbol({Key? key}) : super(key: key);

  @override
  State<AddSymbol> createState() => _AddSymbolState();
}

class _AddSymbolState extends State<AddSymbol> {
  List symbols = [
    "FX/Forex Exotic",
    "FX/Forex Try",
    "FX/Forex Variable1",
    "FX/Forex Varible2",
    "FX/Forex Varible3",
    "FX/Forex Majors",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(  backgroundColor: Colors.black,

        iconTheme: IconThemeData(color:Color(0xff007bff)),
        title: Text('Add Symbols',style: TextStyle(color: Color(0xff007bff),fontWeight: FontWeight.bold,fontSize: 15),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey,),
                    SizedBox(width: 6,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Find Symbols',
                          hintStyle:TextStyle(color: Colors.grey),
                          // Label text style (optional)
                            //prefix: Icon(Icons.search,color: Colors.grey,)// Hide the underline
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade700,),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: symbols.length,
              itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height:30,
                  child: ListTile(
                    leading: Icon(Icons.folder,color: Colors.grey,),
                    title: Text(symbols[index],style: GoogleFonts.lato(
                      fontSize: 15,fontWeight: FontWeight.w800,color: Colors.white
                    ),),
                    //contentPadding: EdgeInsets.zero,
                  ),
                ),
                SizedBox(height: 8,),
                if (index < symbols.length - 1) // Avoid adding a divider after the last item
                  Divider(
                    color: Colors.grey.shade700, // Adjust the color and thickness
                    thickness: 0, // Optional: Adjust thickness of the divider
                  ),
              ],
            );
          })
        ],
      ),
    );
  }
}
