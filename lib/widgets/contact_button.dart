import 'package:flutter/material.dart';
class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
    required this.string , 
    required this.icon , 
    required this.color ,  
     required this.onPressed 
  });
 final IconData icon;
 final String string;
 final Function() onPressed;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: color
      ),
       icon:   Icon(icon,
       color: Colors.indigo, ), label:  Text( string, 
       style: const  TextStyle(
        fontSize: 20 , 
        fontWeight: FontWeight.w500
         , color: Colors.black
       ),), 
     onPressed: onPressed,);
  }
}
