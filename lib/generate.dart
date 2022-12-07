import 'package:betam_app/result.dart';
import 'package:flutter/material.dart';
import 'package:collection/equality.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './gen.dart';
import './input.dart';

class generate extends StatelessWidget {


 
 List<int>text;
  //recieve datafrom input asa parameter
  generate({key, required this.text}) :super(key: key);

static int count = 0;
 int computeBet(){
  List<int> fiveRandom = genState.fiverandomgen();
   int i;
  for(i=0; i<5; i++){
   if (fiveRandom.elementAt(i) == text.elementAt(i)){
     count++;
     print('match found');
    }
  }
  return count;
}

static int factorial(){
  int fact=1;
  if(count > 1){
  for( int i=1; i<=count; i++){
    fact= fact*i;   
  }
  } else if(count<=1){
    fact=0;
  }
  print(count);
  return fact;
}
static int newBalance()
{
  int balance = CustomFormState.stake() * factorial() * count;
  int finalBalance  = balance + CustomFormState.balances();
  print(balance);
return finalBalance;
}
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Total Coins',
      
      home: Scaffold( 
        appBar: AppBar(
       title: Center(child: Text('BETAM'))  ,
          toolbarHeight: 80,
           backgroundColor: Colors.purple, 
           foregroundColor: Colors.white,
            ),
    backgroundColor: Colors.black,

    
    body: new Center(child: new Column(
      children :[
     
     
       /*     Padding(padding: const EdgeInsets.all(10),
         
         child: Text('Computer Bet : '+ genState.fiverandomgen().toString().replaceAll("[", "").replaceAll("]", ""), style: TextStyle(color: Colors.purple, fontSize:14),textAlign: TextAlign.left,),
         ),
*/
     Padding(padding: EdgeInsets.fromLTRB(10, 120, 10, 10),
      child: 
      Icon(FontAwesomeIcons.smile , size: 80, color: Colors.purple,),
      
    ),
     Padding(padding: const EdgeInsets.all(10),
         
         child: Text('Hurray you have  Won ' + computeBet().toString() + ' matches', style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.left,),
        
        ), 
        Padding(padding: EdgeInsets.all(10),
      child: 
      Icon(FontAwesomeIcons.coins , size: 30, color: Colors.purple,),
      
    ),
       Padding(padding: EdgeInsets.all(5),
    
      child: Text('New Balance: ' + newBalance().toString(), style:TextStyle(fontSize: 12, color: Colors.white,)),
    ),
     Padding(padding: EdgeInsets.all(10),
      child: 
      Icon(FontAwesomeIcons.computer , size: 30, color: Colors.purple),
      
    ),
      Padding(padding: const EdgeInsets.all(5),
         
         child: Text('Computer Bet : '+ genState.fiverandomgen().toString().replaceAll("[", "").replaceAll("]", ""), style: TextStyle(color: Colors.white, fontSize:12),textAlign: TextAlign.left,),
         ),
          Padding(padding: EdgeInsets.all(10),
      child: 
      Icon(FontAwesomeIcons.peopleGroup , size: 30, color: Colors.purple),
      
    ),
      Padding(padding: EdgeInsets.all(10),
     
      child: Text('Your Bet: ' +text.toString().replaceAll("[", "").replaceAll("]", ""), style:TextStyle(fontSize: 14, color: Colors.white, )),
    ), 
      ]
    ),
      )
      )
    );
  }
}