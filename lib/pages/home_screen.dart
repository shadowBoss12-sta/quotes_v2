import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotev2/pages/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   
   bottomNavigationBar:Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       IconButton(
           icon:FaIcon(FontAwesomeIcons.stepBackward),
           onPressed:(){

           }
       ),
       
       IconButton(
         icon:FaIcon(FontAwesomeIcons.stepForward),
         onPressed: (){

         },
       ),

       IconButton(
         icon:FaIcon(
             FontAwesomeIcons.solidHeart,
           color: Colors.redAccent,
           size: 30,
         ),
         onPressed: (){

         },
       ),

     ],
   ) ,
   appBar: AppBar(
     title: Text("Home"),
     actions: [
       IconButton(
           icon: FaIcon(
               FontAwesomeIcons.solidHeart,
           color: Colors.red,
             size: 30,
           ),
           onPressed: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => FavoriteScreen()),
             );

           }
       ),
       IconButton(
           icon: FaIcon(FontAwesomeIcons.infoCircle),
           onPressed:(){
        showAboutDialog(
            context: context,//current page,
          children: [
            Text("Author"),
            Text("DSc Flutter"),
          ]

        );
           }
       )
     ],
   ),
   body:Stack(
     children: [
       Container(
         decoration:BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.fill,
               //property
               image:NetworkImage("https://picsum.photos/300/300",)
           )
         ) ,
       ),


       Center(child: Card(

         elevation: 30,
         

         child: Text("I am Flutter",

           style:
           GoogleFonts.redressed(

              textStyle: TextStyle(fontSize: 50 ),


    )

         ),
       )
       ),
     ],
   ),
 );
  }
}