import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ch = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text('ASK ME ANYTHING'),
          ),
        ),
        backgroundColor: Colors.teal,
        body: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ch = Random().nextInt(5) + 1;
                    print('pressed');
                  });
                },
                child: Image.asset('images/ball$ch.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
