
import 'package:flutter/material.dart';
 import './generate.dart';
// Defining a custom Form widget.

class userInput extends StatefulWidget {
  const userInput({super.key});
 
  
  userInputState createState() {
    return userInputState();
  }
}
 

// Defining a corresponding State class.
class userInputState extends State<userInput> {
  //get text in input field and start next screen
 
 void next(BuildContext context){
 List <int> numbers = [int.parse(textFieldController.text),int.parse(text1FieldController.text), int.parse(text2FieldController.text), int.parse(text3FieldController.text),  int.parse(text4FieldController.text)] ;
  Navigator.push(context,
  MaterialPageRoute(builder: (context) => generate(text:numbers,),
  ));
}


//this allows us to acces  the textfield text
 TextEditingController textFieldController = TextEditingController(); 
 TextEditingController text1FieldController = TextEditingController();
  TextEditingController text2FieldController = TextEditingController();
   TextEditingController text3FieldController = TextEditingController();
    TextEditingController text4FieldController = TextEditingController();

 
  Widget build(BuildContext context) {

    // Building a Form widget using the _formKey created above.
   
    return Column(
    children: [
      Padding(padding: const EdgeInsets.all(5),
      child: TextField(
        controller: textFieldController,
        decoration: InputDecoration(
          hintText: 'bet1',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),),
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey
        ),
         ),
      ),
       Padding(padding: const EdgeInsets.all(5),
      child: TextField(
       controller: text1FieldController,
        decoration: InputDecoration(
          hintText: 'bet2',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),),
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey
        ),
         ),
      ),
       Padding(padding: const EdgeInsets.all(5),
      child: TextField(
        controller: text2FieldController,
        decoration: InputDecoration(
          hintText: 'bet3',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),),
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey
        ),
         ),
      ),
       Padding(padding: const EdgeInsets.all(5),
      child: TextField(
        controller: text3FieldController,
        decoration: InputDecoration(
          hintText: 'bet4',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),),
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey
        ),
         ),
      ),
       Padding(padding: const EdgeInsets.all(10),
      child: TextField(
        controller: text4FieldController,
        decoration: InputDecoration(
          hintText: 'bet5',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),),
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey
        ),
         ),
      ),
       
      ElevatedButton(
        style: ElevatedButton.styleFrom( primary: Colors.purple, onPrimary: Colors.white),
        child: Text('Bet' ,style: TextStyle(fontSize: 18),
        ),
        onPressed: (() {
          next(context);
        }
      )
      )
    ],
    );
  
  }
}