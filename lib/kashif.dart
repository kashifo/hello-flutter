import 'package:flutter/material.dart';

class KashifTxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
            child: Text(
          'Kashif Anwaar',
          style: TextStyle(
              fontSize: 28,
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class KashifImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Kashif Anwaar'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/pp.jpg'),
        ),
      ),
    ));
  }
}
