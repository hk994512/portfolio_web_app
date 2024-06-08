 import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> mailTo() async{
final mailto = Mailto(
  to: [] , 
  cc: [] , 
  bcc: [] , 
  subject: "" , 
  body: ""
);
await lauchUrl('$mailto');
   }
final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];
    const fbUrl = "https://www.facebook.com/profile.php?id=100093588376075";
      const  whatsappUrl = "https://wa.me/+923081736926";   
      const instaUrl = "https://www.instagram.com/hamza_khan_9914?igsh=MXh0ZmhmYWpwOGdwOQ=="; 
      
      Future<void> lauchUrl(String url) async{
    if(!await launchUrl(Uri.parse(url))){
      throw Exception("Could not lauch $url");
    }
      }