import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'RobotoSlab',),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adding Assets"),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                  image: AssetImage(
                      'assets/images/Cyan-Xperia-Lollipop-Experience-Flow-Wallpaper-Gizmo-Bolt-.jpg')),
              Image.asset('assets/icons/flutter-eye-catch-01.png'),
              Positioned(
                top: 16,
                left: 450,
                child: Text(
                  'My custom font',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                ),
              ),
              )],
          ),
        ),
      ),
    );
  }
}
