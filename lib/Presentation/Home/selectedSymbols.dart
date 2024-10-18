import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedSymbols extends StatefulWidget {
  const SelectedSymbols({Key? key}) : super(key: key);

  @override
  State<SelectedSymbols> createState() => _SelectedSymbolsState();
}

class _SelectedSymbolsState extends State<SelectedSymbols> {
  List selectedSymbol = [
  Symbols(title: 'EURHUF', subtitle: 'Euro vs Hungrian Forint'),
  Symbols(title: 'EURNOK', subtitle: 'Euro vs Norwegian Krone'),
  Symbols(title: 'EURPLN', subtitle: 'Euro vs Polish Zloty'),
  Symbols(title: 'EURSEK', subtitle: 'Euro vs Swedish Koruna'),
  Symbols(title: 'USDCNH', subtitle: 'Euro vs Chinese Yuan'),
  Symbols(title: 'USDMXN', subtitle: 'Euro vs Mexican Pesos'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color:Color(0xff007bff)),
        title: Text('Selected Symbols',style: TextStyle(color: Color(0xff007bff),fontWeight: FontWeight.bold,fontSize: 15),),
      actions: [
        IconButton(onPressed: (){
        }, icon: Icon(Icons.add,color: Color(0xff007bff),size: 30,)),
        IconButton(onPressed: (){
        }, icon:Icon(Icons.delete,color: Color(0xff007bff),size: 25,)),
      ],
      ),
      body: ListView.builder(
        itemCount:  selectedSymbol.length,
          itemBuilder: (context,index){return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 55,
                child: ListTile(
                  leading: Icon(Icons.menu,color: Colors.grey,size: 10,),
                  title: Text(selectedSymbol[index].title, style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w900,color: Colors.grey),),
                  subtitle: Text(selectedSymbol[index].subtitle, style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade600),),
                ),
              ),
              SizedBox(width: 8,),
              if (index < selectedSymbol.length - 1) // Avoid adding a divider after the last item
                Divider(
                  color: Colors.grey.shade700, // Adjust the color and thickness
                  thickness: 0, // Optional: Adjust thickness of the divider
                ),
            ],
          );}),
    );
  }
}

class Symbols {
  String title;
  String subtitle;
  Symbols({required this.title,required this.subtitle});
}
