// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

var a = 0;

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        titleTextStyle: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16), // Add padding inside the container
            margin: EdgeInsets.all(30), // Add margin outside the container
            decoration: BoxDecoration(
              color: Colors.lightBlue, // Background color
              borderRadius: BorderRadius.circular(12), // Rounded corners
              border: Border.all(
                color: Colors.white, // Border color
                width: 2, // Border width
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 3, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(2, 3), // Shadow offset (x, y)
                ),
              ],
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.indigo], // Gradient colors
                begin: Alignment.topLeft, // Gradient start
                end: Alignment.bottomRight, // Gradient end
              ),
            ),
            child: Text(
              "State Full Widget",
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 18, // Text size
                fontWeight: FontWeight.bold, // Text weight
                fontStyle: FontStyle.italic, // Italic text
                shadows: [
                  Shadow(
                    offset: Offset(1, 1), // Text shadow offset
                    blurRadius: 3, // Text shadow blur radius
                    color: Colors.black26, // Text shadow color
                  ),
                ],
              ),
              textAlign: TextAlign.center, // Center-align the text
            ),
          ),
          Text(
            'Count : ${a.toString()}',
            style: TextStyle(
              color: Colors.blue, // Text color
              fontSize: 24, // Font size
              fontWeight: FontWeight.bold, // Font weight
              fontStyle: FontStyle.italic, // Italic style
              letterSpacing: 2.0, // Space between letters
              wordSpacing: 4.0, // Space between words
              shadows: [
                Shadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  offset: Offset(2, 2), // Shadow offset
                  blurRadius: 4, // Shadow blur radius
                ),
              ],
              decoration: TextDecoration.underline, // Underline the text
              decorationColor: const Color.fromARGB(255, 7, 6, 6), // Color of the underline
              decorationStyle: TextDecorationStyle.solid, // Dashed underline
            ),
            textAlign: TextAlign.center, // Align text to the center
            maxLines: 1, // Maximum number of lines
            overflow:
                TextOverflow.ellipsis, // Handle overflow with ellipsis (...)
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 30),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 29, 158, 3),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                elevation: 30
              ),
                onPressed: () {
                  a += 1;
                  setState(() {});
                },
                child: Icon(Icons.add)),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 227, 18, 35),
                foregroundColor: const Color.fromARGB(255, 2, 13, 23),
                elevation: 30
              ),
              onPressed: () {
                if (a > 0) {
                  a -= 1;
                  setState(() {});
                }
              },
              child: Text(
                '-',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 114, 59, 255),
                foregroundColor: Color.fromARGB(255, 0, 255, 98),
                elevation: 30
              ),
                onPressed: () {
                  a = 0;
                  setState(() {});
                },
                child: Icon(Icons.exposure_zero)),
          )
        ],
      ),
    ));
  }
}
