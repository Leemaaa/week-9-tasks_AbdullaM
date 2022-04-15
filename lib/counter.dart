import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Counter by IconButton';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new NumberCountDemo(),
    );
  }
}

class NumberCountDemo extends StatefulWidget {
  @override
  _NumberCountDemoState createState() => new _NumberCountDemoState();
}

int _counter = 50;

class _NumberCountDemoState extends State<NumberCountDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Number Count")),
      body: new Container(
        child: new Center(
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new FloatingActionButton(
                  onPressed: () => setState(() {
                    if (_counter != 0) {
                      _counter--;
                    }
                    ;
                  }),
                  child: new Icon(
                    const IconData(0xf572,
                        fontFamily: 'MaterialIcons', matchTextDirection: true),
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
                new Text('$_counter', style: new TextStyle(fontSize: 50)),
                new FloatingActionButton(
                  onPressed: () => setState(() {
                    _counter++;
                  }),
                  child: new Icon(
                    IconData(0xe79b,
                        fontFamily: 'MaterialIcons', matchTextDirection: true),
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
              ]),
        ),
      ),
    );
  }
}

// void add() {
//   setState(() {
//     _counter++;
//   });
// }

// void minus() {
//   setState(() {
//     if (_counter != 0) {
//       _counter--;
//     }
//   });
// }
