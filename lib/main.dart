import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButton(),
    ));
}



class MyButton extends StatefulWidget{
  @override 
  MyButtonstate createState(){
    return  MyButtonstate();
  }


}
      //List of numbers
        class MyButtonstate extends State<MyButton>
        {
          int count =0;
        

          List<String > sanskritNumbers =[
            "एकम्",
            "द्वे",
            "त्रीणि",
            "चत्वारि",
            "पञ्च",
            "षट्",
            "सप्त",
            "अष्ट",
            "नव",
            "दश"
          ];
          List<String> englishNumbers=[
            "one",
            "two",
            "three",
            "four",
            "five",
            "six",
            "seven",
            "eight",
            "nine",
            "ten"
          ];
            //function for button press action
             String defaultText ="Sanskrit Numbers";
            String defaultEText ="English Numbers";             

                  void displaySNumbers(){
                    setState((){
                      defaultText=sanskritNumbers[count];
                      defaultEText=englishNumbers[count];
                       if (count<9)
                       {
                         count = count+1;
                       }
                       else
                       {
                         count =0;
                       }

                    });
                  } 
              

     
        
                                        
          //Widget UI described
          @override 
          Widget build(BuildContext context){
              return Scaffold(
                appBar:AppBar(
                 title: Text("My Stateful App"),
                 backgroundColor: Colors.purple,                 
                ) ,
               
                
                          floatingActionButton: FloatingActionButton(
                            
                           child: Icon(Icons.insert_emoticon),                           
                            onPressed:displaySNumbers,
                            backgroundColor: Colors.purple[100],
                            foregroundColor: Colors.purple,
                            
                            ),
                            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

                  body:Container(
                    
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(defaultText , style: TextStyle(fontSize:20)),
                          Text(defaultEText,style:TextStyle(fontSize:20)),
                          Padding(padding: EdgeInsets.all(30),),
                          
                          //RaisedButton( 
                            //child: Text('Display Numbers'),
                            //onPressed:displaySNumbers,                           
                            // color: Colors.purple,
                            // )
                       
                             //Trying to add floating action button
                             
                        ],
                      ),
                      ),
                      ),
                  );
                        }
              }


