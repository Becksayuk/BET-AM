import 'package:betam_app/generate.dart';
import 'package:flutter/material.dart';
 import 'dart:math';
 import 'balance.dart';
// Defining a custom Form widget.

class gen extends StatefulWidget {
  const gen({super.key});
 
   genState createState() {
    return genState();
  }
}
 

// Defining a corresponding State class.
class genState extends State<gen> {
 
 static List<int> values = [];
    List<int> randomgen(){ 
   int pick;
   int randomIndex;
  int newValue;
  var rng = Random();
  for (int i=0; i<15; i++){
   pick = rng.nextInt(100);
   if(!values.contains(pick)){
   values.add(pick);
   print(values);
   }
  
  }
   
 return values;
   }
 
  static List<int> choosen = [];
  static List<int> fiverandomgen(){
  var rng = Random();
  int randomIndex;
  int newValue;
  while(choosen.length < 5){
    randomIndex = rng.nextInt(values.length);
    newValue = values.elementAt(randomIndex);
   if(!choosen.contains(newValue)){
      choosen.add(newValue);
      
    }
  }
  return choosen;
}
  //get text in input field and start next screen
  Widget build(BuildContext context) {
    
    return Column(
       children: [
         Padding(padding: const EdgeInsets.all(10),
         
         child: Text(randomgen().toString().replaceAll("[", "").replaceAll("]", ""), style: TextStyle(color: Colors.purple, fontSize: 20),),
         ),
           Padding(padding: const EdgeInsets.all(10),
         // Text(fiverandomgen().toString().replaceAll("[", "").replaceAll("]", ""), style: TextStyle(color: Colors.purple, fontSize: 20),),
       
         )
       ],
         
         );
   
  }

}
