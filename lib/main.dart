import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//void main() => runApp(HelloFlutter());
//void main() => runApp(StartupNames());
//void main() => runApp(RandomWordsApp());

/*void main() {
  runApp(
    MaterialApp(
      home: Text('Hello World'),
    ),
  );
}*/

/*void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://cdn.vox-cdn.com/thumbor/AyGBj1C3KgicgO_BtGtLbINeSew=/0x0:2040x1360/1200x800/filters:focal(866x1034:1192x1360)/cdn.vox-cdn.com/uploads/chorus_image/image/59189679/shutterstock_140731432_sized.0.jpg'),
          ),
        ),
      ),
    ),
  );
}*/

/*void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}*/

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('Kashif Anwaar'),
    ),
    body: Center(
      child: Image(
        image: AssetImage('images/pp.jpg'),
      ),
    ),
  )));
}

class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Center(
          child: Text('Bismillah'),
        ),
      ),
    );
  }
}

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

class StartupNames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generatorr',
      home: StartupNamesWidget(),
    );
  }
}

class StartupNamesWidget extends StatefulWidget {
  @override
  StartupNamesState createState() => StartupNamesState();
}

class StartupNamesState extends State<StartupNamesWidget> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
