import 'package:flutter/material.dart';

var title = 'Revision 1 after 18 days';

void main() {
  runApp(
    new MaterialApp(
      title: title,
      home: Zikr(),
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
