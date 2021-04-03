import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("ASK ME YOU SIKKO !!"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNum.png')),
      ),
    );
  }
}
