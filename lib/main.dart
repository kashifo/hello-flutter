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
//void main() => runApp(MainList());
void main() => runApp(MainBizCard());

/*void main() {
  runApp(
    MaterialApp(
      home: Text('Hello World'),
    ),
  );
}*/

class MainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Routes'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Kashif')));
                },
                child: Text('Kashif'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Anwaar'),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
