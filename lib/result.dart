import 'package:flutter/material.dart';
 import 'dart:math';
 import './gen.dart';
 import './generate.dart';
 import './input.dart';
// Defining a custom Form widget.

class result extends StatefulWidget {
  const result({super.key});
 
   resultState createState() {
    return resultState();
  }
}
 

// Defining a corresponding State class.
class resultState extends State<result> {



  //get text in input field and start next screen
  Widget build(BuildContext context) {
    
    return Column(
       children: [
          Padding(padding: const EdgeInsets.all(10),
         
        // child: Text('Balance : ' + balance.toString(), style: TextStyle(color: Colors.white, fontSize:18),textAlign: TextAlign.left,),
         ),
       ]
         );
   
  }

}
