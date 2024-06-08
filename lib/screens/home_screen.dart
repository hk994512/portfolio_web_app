
import 'package:flutter/material.dart';
import '/utils/facility.dart';

import '../widgets/profile_body.dart';
import '../widgets/button_row.dart';
import '../widgets/contact_button.dart';
class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           actions:   [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ContactButton(icon: Icons.send_sharp,color: Colors.yellow , string: "Contact me", onPressed: () {
                  mailTo();
                },),
              )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        
        title:   const  Row(
          children: [
            Padding( 
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                // backgroundColor: Colors.white,
                radius: 20 ,
                 foregroundImage: AssetImage("assets/hamza.jpeg"),
              ),
            ) , 
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("M Hamza" , style: TextStyle(
                color: Colors.black , 
                fontSize: 20 , 
                fontFamily:  "Roboto" , 
                fontStyle:FontStyle.italic , 
                fontWeight: FontWeight.w400
              ),),
            ) ,  
         
           
          ],
          
        )  , 
     
      ),
      body:  const Stack(
        children: [
         Body()  ,
        Align( 
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(48.0),
            child: ButtonRow(),
          ))
        ],
      )
    );
  }
}




