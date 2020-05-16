import 'package:Hello_Flutter/biz_card/BizCard.dart';
import 'package:Hello_Flutter/containers.dart';
import 'package:Hello_Flutter/revision/add_to_list.dart';
import 'package:Hello_Flutter/simple_list.dart';
import 'package:Hello_Flutter/startup_names.dart';
import 'package:Hello_Flutter/xylophone.dart';
import 'package:flutter/material.dart';
import 'package:Hello_Flutter/random_words.dart';

import 'dice_app/DiceMain.dart';
import 'hello_flutter.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/pp.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Kashif Anwaar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Courgette',
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'CourierPrime',
                  letterSpacing: 2,
                ),
              ),
              MyDivider(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'Hello World!',
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HelloFlutter()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Random Words'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RandomWordsGen()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Containers'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => cellDemo()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Simple List'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SimpleList()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Infinite List'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StartupNamesWidget()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('ListView with Add & Delete'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddToList()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Business Card'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainBizCard()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Dice'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DiceApp()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Xylophone'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => XyloPhone()),
                        );
                      },
                    ),
                    Container(
                      width: double.infinity,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 250,
      child: Divider(
        color: Colors.deepPurpleAccent.shade100,
      ),
    );
  }
}
