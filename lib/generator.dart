import 'package:betam_app/generate.dart';
import 'package:betam_app/userInput.dart';
import 'package:flutter/material.dart';
import 'gen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'balance.dart';


class generator extends StatelessWidget {
 
 int text;

  //recieve datafrom input asa parameter
  generator({key, required this.text}) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Total Coins',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BETAM'),
          toolbarHeight: 80,
           backgroundColor: Colors.purple, 
           foregroundColor: Colors.white,
            ),
    backgroundColor: Colors.black,

    
    body: Column(
      children :[
         Padding(padding: EdgeInsets.all(10),
       
    ),
      Padding(padding: EdgeInsets.all(10),
      child: 
      Icon(FontAwesomeIcons.coins , size: 30, color: Colors.white,),
      
    ),
   Padding(padding: EdgeInsets.all(10),
  child:Text( 'New Balance : '+ text.toString(), style:TextStyle(fontSize: 14, color: Colors.white)),
   ),
   Padding(padding: EdgeInsets.all(10),
    child: gen() ),
     Padding(padding: EdgeInsets.all(5),
      child: Text( 'Choose 5 numbers from list above', style:TextStyle(fontSize: 12, color: Colors.white)),
    ),
     Padding(padding: EdgeInsets.all(10),
    child:userInput() )
      ]
    ),
      )
    );
  }
}