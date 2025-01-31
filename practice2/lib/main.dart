// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice2/container%20and%20more.dart';
import 'package:practice2/container.dart';
import 'package:practice2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

      // home: container(),
      // home: HomeApp(),
      home:container_and_more()
    );
  }
}