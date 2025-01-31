// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(backgroundColor: const Color.fromARGB(255, 212, 164, 180),),
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Color.fromARGB(31, 12, 114, 73),
          backgroundColor: Color.fromARGB(137, 135, 139, 127),
          appBar: AppBar(title:Text("My First App")),
          body: Center(
            child: Text("Hello Flutter by data", 
            style: TextStyle(
              color : Colors.black ,
              fontSize: 30,
              fontWeight: FontWeight.bold,
               ),),
          )
        ),
      ),
    );
  }
}