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
  _RandommWordsGenState createState() => _RandommWordsGenState();
}

class _RandommWordsGenState extends State<RandomWordsGen> {
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
