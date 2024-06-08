import 'package:flutter/material.dart';
import '../utils/facility.dart';
import '../widgets/contact_button.dart';
var intro ="I 'm M Hamza\nA Software Engineer\nAnd Future Scientist";
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    
  
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded( 
          flex: 1,
          child: Container(
          color: Colors.white , 
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                Opacity(
                  opacity: 0.6 ,
                  child: Image.asset("bg-profile.png" , )) , 
                   Align(
                    alignment: Alignment.topCenter,
                     child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(intro , style:const TextStyle(
                          color: Colors.blueGrey , 
                          fontSize:30
                         ),), 
                         Align( 
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
                            child: ContactButton(
                              
                              string: "Drop me a line", color: Colors.teal , icon: Icons.mail_outline, onPressed: (){
                                mailTo();

                              }),
                          ))
                       ],
                     ),
                   )
                ],
              )
            ],
          ),
        )) , 
           Expanded( 
          
          child: Container(
     
          child:   Column(
            
            children: [
               const SizedBox(
                height: 34,
              )  ,
              const  Text("My Projects" , style: TextStyle(
              fontSize: 24 , 
              fontStyle: FontStyle.normal, 
              fontWeight: FontWeight.w500  , 
              color: Colors.black54
              ),)  ,  
              Expanded(child: ListView.builder(
                itemCount: projectsList.length,
                itemBuilder: (c,i)=>Container( 
                  alignment: Alignment.center,
                child: Column(
                  children: [
                    Card(
                      elevation: 3,
                      child: Column(
                        children: [
                          ListTile(leading:  const  Icon(Icons.work),
                          title: Text(projectsList[i]['title']!),)  , 
                          Container(
                            child: Image.network(projectsList[i]['image']!),
                          )
                        ],
                      ), 
                    )
                  ],
                ),
              )))
            ],
          ),
        )) , 
       const  SizedBox(width: 100,) 
      ],
    );
  }
}
