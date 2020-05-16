import 'package:flutter/material.dart';

import 'add_to_list.dart';

var title = 'Revision 1 after 18 days';

void main() {
  runApp(
    new MaterialApp(
      title: title,
      home: AddToList(),
    ),
  );
}

class Rev1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Alhamdulillah',
          style: TextStyle(fontSize: 24, color: Colors.lightGreen),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility),
        onPressed: () {
          print('pressed');
        },
      ),
    );
  }
}

class Zikr extends StatefulWidget {
  @override
  _ZikrState2 createState() => _ZikrState2();
}

class _ZikrState extends State<Zikr> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Pressed $count times',
          style: TextStyle(fontSize: 24, color: Colors.lightGreen),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class _ZikrState2 extends State<Zikr> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressed $count times',
              style: TextStyle(fontSize: 24, color: Colors.blueGrey),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              child: Text("Update Count"),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
            Container(
              width: double.infinity,
            )
          ],
        ));
  }
}

class ExpandedCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: Text('My Social Profiles'),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/pp.jpg'),
            radius: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Kashif Anwaar',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SizedBox(
              height: 1,
              width: 250,
              child: Divider(
                color: Colors.white70,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Image(
                  width: 50,
                  image: AssetImage('images/fb.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Image(
                  width: 50,
                  image: AssetImage('images/twitter.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Image(
                  width: 50,
                  image: AssetImage('images/ig.png'),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
