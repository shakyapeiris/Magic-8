import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Magic 8 Ball"),
          backgroundColor: Colors.amber[800],
        ),
        body: Center(
          child: Expanded(
            child: TextButton(
              child: Image.asset('images/ball$imageNumber.png'),
              onPressed: () {
                setState(() {
                  imageNumber = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
