// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//  this file contains different topics  
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(31, 12, 114, 73),

        backgroundColor: Color.fromARGB(137, 135, 139, 127),
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("My First App", style: TextStyle(
              // Set the color of the text
              color: Color.fromARGB(255, 0, 0, 0), 
              
              // Font size of the text
              fontSize: 24.0,
              
              // Set the font weight (thickness)
              fontWeight: FontWeight.bold,
              
              // Set the font style (italic or normal)
              fontStyle: FontStyle.italic,
              
              // Add spacing between letters
              letterSpacing: 1.0,
              
              // Add spacing between words
              wordSpacing: 2.0,
              
              // Text decoration (underline, overline, or strikethrough)
              decoration: TextDecoration.underline,
              
              // Color of the text decoration
              decorationColor: Color.fromARGB(255, 15, 15, 15),
              
              // Style of the text decoration (solid, dotted, dashed, etc.)
              decorationStyle: TextDecorationStyle.solid,
              
              // Set the font family
              fontFamily: 'Roboto',
              
              // Set the background color behind the text
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              
              // Add shadows to the text
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 4.0,
                ),
              ],
              
              // Set the height of the text lines (line height multiplier)
              height: 1.5,
            ),),
            
          centerTitle: true,
          actions: const [
              
            Icon(
              Icons.notification_add,
              size: 30.0,
              color: Colors.red,
              semanticLabel: 'Add Notification',
              textDirection: TextDirection.ltr,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(3, 3),
                  blurRadius: 5.0,
                ),
              ],
            ),
            // The SizedBox widget is used to create a box with a fixed width, height, or both. It is commonly used for adding spacing or constraining dimensions of child widgets.
            SizedBox(
              width: 20.0,
              height: 50.0,
            ),
            Icon(
              Icons.person_2_rounded,
              size: 30,
            ),
            SizedBox(
              width: 20.0,
              height: 40.0,
            ),
          ], // action
        ),
        body: Center(
          child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello Flutter Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
              ],
            ),
          ),
        ));
  }
}
