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
         child: (currentIndx == 0) ? Container(     // conditon if home icon => Container() else SizedBox eg:a>b?a:b
          height: 500,
          alignment: Alignment.center, //
          //color: Colors.red,
          decoration: BoxDecoration(
            color: Colors.amber[700],border: Border(top:BorderSide(color: Colors.black54) ),
            image: const DecorationImage(image: AssetImage("images/amazing_building.png")),
            ),
          child: Row(                                      // child of container
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end, 
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.amber[600],  //color for btn text
                  backgroundColor: Colors.amber[100],  // color for btn background 
                ),
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
        ) : Image.network("https://cdn.pixabay.com/photo/2016/09/08/18/45/cube-1655118_640.jpg", height: 200, width: 300,),// to load img from network/http
        ),
        

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.add_home_outlined)),
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

//The # symbol in pubspec.yaml is used to denote comments. Anything on a line after a # is ignored by the YAML parser and is not executed as part of the configuration. It’s a way to add notes or disable code without deleting it.
// all images inside images/ folder is accesible to flutter as modified assets in pubspec.yaml  