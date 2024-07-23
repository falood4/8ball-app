import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("8 Ball"),
            backgroundColor: Colors.blueAccent,
          ),
          backgroundColor: Colors.black,
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => BallUpdate();
}

class BallUpdate extends State<Ball> {
var Ballnumber=1;

  void changeBallnumber() {
    setState(() {
      int Ballno = Random().nextInt(5) + 1;
      Ballnumber=Ballno;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: TextButton(
      onPressed: () {
        changeBallnumber();
      },
      child: Image.asset('images/ball$Ballnumber.png'),
    )));
  }
}
