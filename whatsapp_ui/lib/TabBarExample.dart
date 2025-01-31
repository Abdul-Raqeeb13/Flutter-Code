// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/GridViewExample.dart';
import 'package:whatsapp_ui/ListTileExample.dart';
import 'package:whatsapp_ui/ListViewExample.dart';

class WhatsAppTabBar extends StatefulWidget {
  const WhatsAppTabBar({super.key});

  @override
  State<WhatsAppTabBar> createState() => _WhatsAppTabBarState();
}

class _WhatsAppTabBarState extends State<WhatsAppTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Whatapp"),
            bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              unselectedLabelColor: Colors.black,
              tabs: [
                
                Row(
                  children: [
                    Icon(Icons.chat),
                    SizedBox(width:5),
                    Tab(text: "Chat"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width:5),
                    Tab(text: "Status"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.call_sharp),
                    SizedBox(width:5),
                    Tab(text: "Calls"),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
              children: [ListTileExample(), GridViewList(), ListViewExample()]),
        ));
  }
  
}
