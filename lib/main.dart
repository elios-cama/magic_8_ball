import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          title: Text(
            'ask me anything...',
            style: TextStyle(
              fontFamily: 'Wizard',
              fontSize: 40,
            ),
          ),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void ChangeBall(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FlatButton(
          onPressed: (){
            ChangeBall();
          },
          child: Image(
            image: AssetImage('images/ball$ballNumber.png'),
          ),
        ),

      ),),

    );
  }
}
