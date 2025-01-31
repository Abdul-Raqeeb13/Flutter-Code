// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class InputsFields extends StatefulWidget {
  const InputsFields({Key? key}) : super(key: key);

  @override
  _InputsFieldsState createState() => _InputsFieldsState();
}

class _InputsFieldsState extends State<InputsFields> {
  @override
  TextEditingController name = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Admission Forms"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Your Name:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Space between the label and TextField
              TextField(
                controller: name,

                // for password hiddden on typing
                obscureText: true,

                
                decoration: InputDecoration(

                    // DIFFERRNT BORDER WHEN WE WANT BORDER ON FOCUSED , NORMAL , AUTOMATICALLY ENABLED
                    // border: OutlineInputBorder(), // Adds a border to the TextField
                    // enabledBorder: OutlineInputBorder(), // Adds a border to the TextField
                    // errorBorder: OutlineInputBorder(), // Adds a border to the TextField
                    // disabledBorder: OutlineInputBorder(), // Adds a border to the TextField
                    // focusedErrorBorder: OutlineInputBorder(), // Adds a border to the TextField


                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20.0)), // All corners with a radius of 10.0
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                        style: BorderStyle.solid,
                      ),
                      // Adds a border to the TextField
                    ),
                    hintText: 'Enter your full name', // Placeholder text
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, wordSpacing: 10),
                    labelText: 'Name', // Floating label
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 237, 7, 249)),

                    // STARTING ICON
                    prefixIcon: Icon(Icons.person,
                        size: 30,
                        color: Color.fromARGB(
                            255, 6, 171, 69)), // Icon before the input

                    // ENDING ICON MOSTLY USED IN PASSOWRD SHOW AND REMOE PASSWORD
                    suffixIcon: Icon(Icons.remove_red_eye,
                        size: 30,
                        color: Color.fromARGB(
                            255, 6, 171, 69)), // Icon before the input

                    // BACKGROUND COLOR OF THE INPUT
                    filled: true, // Background fill
                    fillColor: Colors.grey[0], // Light grey background

                    // INPUT CONTENT INNER PADDING
                    contentPadding: EdgeInsets.all(20)),
              ),
              // this button print the output on debug console name is state define in above code
              ElevatedButton(
                  onPressed: () {
                    print(name.text);
                  },
                  child: Text("Heello"))
            ],
          ),
        ),
      ),
    );
  }
}
