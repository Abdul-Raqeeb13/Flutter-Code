import 'package:flutter/material.dart';
import 'package:whatsapp_ui/GridViewExample.dart';
import 'package:whatsapp_ui/ListTileExample.dart';
import 'package:whatsapp_ui/ListViewExample.dart';
import 'package:whatsapp_ui/TabBarExample.dart';


class showAllScreens extends StatefulWidget {
  const showAllScreens({super.key});

  @override
  State<showAllScreens> createState() => _showAllScreensState();
}

class _showAllScreensState extends State<showAllScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListTileExample()));
            }, child: Text("List Tile Page")),
         
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewExample()));
            }, child: Text("List View Page")),
      
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewList()));
            }, child: Text("Grid View list")),
           
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WhatsAppTabBar()));
            }, child: Text("Whatsapp UI"))
          ],
        ),
      ),
    );
  }
}