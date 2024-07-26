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
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(), 
         
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("title"),
          ),
          body: Center(
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent[100],
              ),
              child: const Text("press to route"),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                return const SecondPage();
              } )),
            ), 
          ),
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, //leading given on appbar eg: <- btn which route to previous navigation
        ),
      backgroundColor: Colors.amber[200],
      body: const Center(
        child: Text("you are now on SecondPage from FirstPage"),
        
    )
    );
  }
}

