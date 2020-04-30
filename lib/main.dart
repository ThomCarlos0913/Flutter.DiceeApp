// Author: John Thomas Carlos
// Copyright © 2020
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Dicee'),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // Variables
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  // Functions
  void rollDice() {
    setState(() {
      this.leftDiceNumber = Random().nextInt(6) + 1;
      this.rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Dice 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('images/dice_$leftDiceNumber.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '$leftDiceNumber',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Dice 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('images/dice_$rightDiceNumber.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '$rightDiceNumber',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          onPressed: rollDice,
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
