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
  String buttonName = "click here";
  int currentIndx = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          title: const Text('App Bar tittle'),
          foregroundColor: Colors.green[200],
        ),

        body: Center(
         child:SizedBox(
          
          width: double.infinity, // will take as much as place possible
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          
           ElevatedButton(
            onPressed: () {
              setState(() {
                buttonName = "clicked";
              });
            },
            child: Text(buttonName),
          ),
        
        
           ElevatedButton(
            onPressed: () {
              setState(() {
                buttonName = "clicked";
              });
            },
            child: Text(buttonName),
          ),
        
        ],),
        ),
        ),
        

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Clock", icon: Icon(Icons.access_time_filled_rounded)),
            BottomNavigationBarItem(
                label: "email", icon: Icon(Icons.alternate_email_rounded)),
          ],
          currentIndex: currentIndx,
          backgroundColor:Colors.greenAccent[2],
          onTap: (int index) {
            setState(() {
              currentIndx = index;
            });
          },
        ),
      ),
    );
  }
}
