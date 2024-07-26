// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {                   //This triggers when the tap gesture wins
              setState(() {               //Notify the framework that the internal state of this object has changed
                isClicked = (!isClicked); // if img clicked will set bool isclicked to false as NOT condition vice versa
              });
            },
            child: isClicked
                ? Image.network(
                    "https://cdn.pixabay.com/photo/2016/09/08/18/45/cube-1655118_640.jpg")
                : Image.asset("images/amazing_building.png"),
          ),
        ),
      ),
    );
  }
}
//