import 'package:flutter/material.dart';
import '../utils/facility.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });
 
  @override
  Widget build(BuildContext context) {
     
    return Row(
      mainAxisSize: MainAxisSize.min, 
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       Container(
        color:  const Color(0xfffbefd9),
          child:   Row(
            children: [
             TextButton.icon(onPressed: (){
              lauchUrl(fbUrl
              );
             }, icon: Image.asset("facebook.png" , 
            width: 15 ,height: 15,), label:  const Text(''))  , 
            TextButton.icon(onPressed: (){


              lauchUrl(instaUrl);
            }, icon: Image.asset("instagram.png" , 
            width: 15 ,height: 15,), label:  const Text(''))  , 
            TextButton.icon(onPressed: (){
              lauchUrl(whatsappUrl);
            }, icon: Image.asset("whatsapp.jpg" , 
            width: 20 ,height: 20,), label:  const Text(''))  , 
           
            ],
          ),
        )
      ],
    );
    
  }
  
  }
