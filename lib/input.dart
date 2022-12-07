

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 import './generator.dart';
// Defining a custom Form widget.

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});
 
  
  CustomFormState createState() {
    return CustomFormState();
  }
}
 

// Defining a corresponding State class.
class CustomFormState extends State<CustomForm> {

 // final _formKey = GlobalKey<FormState> ();
  //get text in input field and start next screen
 static int _initialCoins = 1000;

 void balance(){
   int newBalance = _initialCoins -  int.parse(textFieldController.text);
   Navigator.push(context,
  MaterialPageRoute(builder: (context) => generator(text: newBalance,) ));
 
}
 static int balances(){
   int newBalance = _initialCoins -  int.parse(textFieldController.text);
   return newBalance;
 }
 static int stake(){
int stakeToSend = int.parse(textFieldController.text);
  return stakeToSend;
}

//this allows us to acces  the textfield text
static TextEditingController textFieldController = TextEditingController();
 
 @override
  Widget build(BuildContext context) {

    // Building a Form widget using the _formKey created above.
   
    return Column(
    children: <Widget>[
      Padding(padding: const EdgeInsets.all(16.0),
      child: TextFormField(
       
        controller: textFieldController,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
        decoration: InputDecoration(
          labelText: 'Enter stake',
          labelStyle: TextStyle(color: Colors.white, fontSize: 12),
          hintText: '',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
           ),
         validator:(value){
           if (value == null || value.isEmpty){
             return 'please enter a stake number';
           }
           return null;
         },
          style: TextStyle(
          fontSize: 14,
          color: Colors.white
        ),
        
         ),
      )
      ,
      SizedBox(
        height: 20,
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom( primary: Colors.purple, onPrimary: Colors.white),
        child: Text('Stake Coins' ,style: TextStyle(fontSize: 11),
        ),
        onPressed: (() {
         balance();
        }
      )
      )
    ],
    );
    
  
  }
}