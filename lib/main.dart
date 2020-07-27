import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade800,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              print(ballNumber);
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
