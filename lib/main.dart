import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          changeBall();
          print('I got clicked');
        },
      ),
    );
  }
}
