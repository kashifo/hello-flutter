import 'package:Hello_Flutter/biz_card/BizCard.dart';
import 'package:Hello_Flutter/containers.dart';
import 'package:Hello_Flutter/i_am_rich.dart';
import 'package:Hello_Flutter/kashif.dart';
import 'package:Hello_Flutter/startup_names.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:Hello_Flutter/random_words.dart';

import 'hello_flutter.dart';

//void main() => runApp(HelloFlutter());
//void main() => runApp(StartupNames());
//void main() => runApp(RandomWordsApp());
//void main() => runApp(IAmRich());
//void main() => runApp(KashifImg());
//void main() => runApp(KashifTxt());
//void main() => runApp(MyContainers());
//void main() => runApp(MainBizCard());

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: RouteList(),
    ),
  );
}

class RouteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Bismillah'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelloFlutter()),
                );
              },
            ),
            RaisedButton(
              child: Text('Random Words'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RandomWordsGen()),
                );
              },
            ),
            RaisedButton(
              child: Text('Startup Names'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartupNamesWidget()),
                );
              },
            ),
            RaisedButton(
              child: Text('Kashif Txt'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KashifTxt()),
                );
              },
            ),
            RaisedButton(
              child: Text('I Am Rich'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RichWidget()),
                );
              },
            ),
            RaisedButton(
              child: Text('Containers'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cell()),
                );
              },
            ),
            RaisedButton(
              child: Text('Business Card'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainBizCard()),
                );
              },
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
