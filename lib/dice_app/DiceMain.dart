import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1, rightDiceNum = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //Expanded: takes as much width or height in row/col
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = getRandNum();
                });
              },
              child: Image.asset('images/dice/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = getRandNum();
                });
              },
              child: Image.asset('images/dice/dice$rightDiceNum.png'),
            ),
          )
        ],
      ),
    );
  }

  void incDiceNum() {
    if (leftDiceNum < 6) {
      leftDiceNum += 1;
    } else {
      leftDiceNum = 1;
    }
  }

  int getRandNum() {
    int min = 1, max = 6;
    int rand = 1 + Random().nextInt(max - min);
    return rand;
  }
}
