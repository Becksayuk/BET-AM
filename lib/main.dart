import 'package:flutter/material.dart';
import './input.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 // const MyApp({super.key});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
 int _initialCoins = 1000;
  

  
  // This widget is the root of your application.
 

      @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    
      title: 'Total Coins',
      
      home: Scaffold(
        appBar: AppBar( 
          title: 
          Text('BETAM'),
          toolbarHeight: 80,
           backgroundColor: Colors.purple, 
           foregroundColor: Colors.white,
            ),
    backgroundColor: Colors.black,

   body: Column(
       children: [
         
          Padding(padding: const EdgeInsets.all(10),
         child: Icon(FontAwesomeIcons.coins, size: 30, color: Colors.white, ),
         
         ),
         Padding(padding: const EdgeInsets.all(10),
         child: Text('Total Coins : ' +_initialCoins.toString(), style: TextStyle(fontSize: 18, color: Colors.white),),
         ),
            CustomForm()
            
       ],

   )
   
  //  Container(child: Text('Hello', style: TextStyle(color: Colors.white),),)
    
   
   
     
       )    //child: Text(_initialCoins.toString()), 
        );    
  
  
}
}
