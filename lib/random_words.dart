import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWordsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomWordsGen(),
    );
  }
}

class RandomWordsGen extends StatefulWidget {
  _RandommWordsGenState2 createState() => _RandommWordsGenState2();
}

class RandommWordsGenState extends State<RandomWordsGen> {
  String txt = 'Press FAB to generate new words';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Words'),
      ),
      body: Center(
        child: Text(txt, style: new TextStyle(fontSize: 22)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.all_inclusive),
        onPressed: () {
          setState(() {
            txt = WordPair.random().asPascalCase;
          });
        },
      ),
    );
  }
}

class _RandommWordsGenState2 extends State<RandomWordsGen> {
  String txt = WordPair.random().asPascalCase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Random Words'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(txt, style: new TextStyle(fontSize: 22)),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text('Next'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    txt = WordPair.random().asPascalCase;
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  //side: BorderSide(color: Colors.red),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ));
  }
}
