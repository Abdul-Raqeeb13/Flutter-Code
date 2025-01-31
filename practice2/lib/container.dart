// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


// this file mainly focus on container and decoration topic 

import 'package:flutter/material.dart';

class container extends StatefulWidget {
  const container({super.key});

  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New App'),
        centerTitle: true,
        leading: Icon(Icons.person_2_outlined),
        actions: [
          Icon(
            Icons.search,
            size: 20,
          ),
          // sizedbox is used where we want a space from a single side left, right , top , bottom . Margin is used to make a space from all side 
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 21, 218, 132),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "../assets/flutter.png",
                        height: 50,
                      ),
                      Text(
                        'User 1',
                        style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 100,
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      Icon(Icons.phone_android),
                      Text('03131399459'),
                      Icon(Icons.arrow_circle_right),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYkdR8s7LjdrWp3-2qZK60EPCSU5Ivlv_kMgMPkTNYtR09CeImi1y7bJBpGgIp7EMe5yw&usqp=CAU',
                        width: 80,
                        height: 40,
                        fit: BoxFit.contain,
                        // fit: BoxFit.cover,
                        // fit: BoxFit.fill,
                        // fit: BoxFit.fitHeight,
                        // fit: BoxFit.fitWidth,
                        // fit: BoxFit.scaleDown,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  // margin is used only inside the container . Margin is used to make a space from all the side

                  // make the space from all the side
                  margin: EdgeInsets.all(50),
                  // if we want to give only the specific side margin or padding so we use edgeinset only 
                  padding: EdgeInsets.only(left: 50, top:100),
                  // padding:edeg


                  width: MediaQuery.of(context).size.width *
                      0.5, // menas 100% if we multipli width 0.3 menas 30% of the screen same as hieght
                  height: MediaQuery.of(context)
                      .size
                      .height*0.5, // means take 50% height of the screen
                  child: Text('Paragraph', style: TextStyle(color: Color.fromARGB(255, 234, 7, 147), fontSize: 30),),
                  decoration: BoxDecoration( 
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                    style: BorderStyle.solid

                  ),
                  borderRadius: BorderRadius.circular(20)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
