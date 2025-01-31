// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ChatMe"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Chat_UI("Ali", "Ok", "1:09"),
            myMainUser("https://static.vecteezy.com/system/resources/previews/030/798/360/non_2x/beautiful-asian-girl-wearing-over-size-hoodie-in-casual-style-ai-generative-photo.jpg", "Rida", "Hi nice to meet you","3:00"),
            Chat_UI("Hammad", "Nice", "2:59"),
           
          ]),
        ),
      ),
    );
  }

  ListTile myMainUser(pic, name, title, time) {
    return ListTile(
      leading:
         CircleAvatar(
  backgroundColor: Colors.red,
  child: ClipOval(
    child: Image.network(
      pic,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    ),
  ),
),

      title: Text(name),
      subtitle: Text(title),
      trailing: Text(time),
      // mmore things
      // hoverColor: ,
      // iconColor: ,
    );
    
  }

  ListTile Chat_UI(name, title, time) {
    return ListTile(
      leading:
          CircleAvatar(backgroundColor: Colors.red, child: Icon(Icons.person)),
      title: Text(name),
      subtitle: Text(title),
      trailing: Text(time),
      // mmore things
      // hoverColor: ,
      // iconColor: ,
    );
  }
}
