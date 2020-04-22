import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return cellDemo();
  }
}
/*

Widget _basic1() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        color: Colors.white,
        child: Text('Kashif Anwaar'),
      ),
    ),
  );
}

Widget _basic2() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Container(
          width: 150,
          height: 50,
          margin: EdgeInsets.only(left: 10, top: 20),
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Text('Kashif Anwaar'),
        ),
      ),
    ),
  );
}

Widget _columns() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: Text('Col 1'),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Text('Col 2'),
          ),
        ],
      )),
    ),
  );
}

Widget columns2() {
  return Scaffold(
    backgroundColor: Colors.black12,
    body: SafeArea(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            print('Tap Recorded');
          },
          child: Container(
            width: 150,
            height: 50,
            margin: EdgeInsets.only(left: 10, top: 20),
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Text('Kashif Anwaar'),
          ),
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text('Col 1'),
        ),
        Container(
          color: Colors.blue,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text('Col 2'),
        ),
        Container(
          color: Colors.green,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text('Col 3'),
        ),
        Container(
          width: double.infinity,
        )
      ],
    )),
  );
}

Widget _row() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Rows'),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              width: 50,
              height: 50,
              image: AssetImage('images/fb.png'),
            ),
            Image(
              width: 50,
              height: 50,
              image: AssetImage('images/ig.png'),
            ),
            Image(
              width: 50,
              height: 50,
              image: AssetImage('images/twitter.png'),
            ),
          ],
        ),
      ),
    ),
  );
}
*/

Widget cellDemo() {
  return Scaffold(
    appBar: AppBar(
      title: Text('Container Cells'),
    ),
    body: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                width: 150,
                height: 150,
                image: AssetImage('images/fb.png'),
              ),
              Image(
                width: 150,
                height: 150,
                image: AssetImage('images/ig.png'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                width: 150,
                height: 150,
                image: AssetImage('images/twitter.png'),
              ),
              Image(
                width: 150,
                height: 150,
                image: AssetImage('images/linkedin.png'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class ExpandedAndFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Expanded & Flex'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('images/dice/dice1.png'),
              ),
              Expanded(
                child: Image.asset('images/dice/dice2.png'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset('images/dice/dice3.png'),
              ),
              Expanded(
                flex: 1,
                child: Image.asset('images/dice/dice4.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
