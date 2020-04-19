import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
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
                  if (leftDiceNum < 6) {
                    leftDiceNum += 1;
                  } else {
                    leftDiceNum = 1;
                  }
                });
              },
              child: Image.asset('images/dice/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = 1 + Random().nextInt(7 - 1);
                  print('rightDiceNum=$rightDiceNum');
                });
              },
              child: Image.asset('images/dice/dice$rightDiceNum.png'),
            ),
          )
        ],
      ),
    );
  }
}
