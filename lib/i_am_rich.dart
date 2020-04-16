import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AssetWidget();
  }
}

Widget RichWidget() {
  return Scaffold(
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
  );
}

Widget AssetWidget() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Twitter'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
            width: 150, height: 150, image: AssetImage('images/twitter.png')),
      ),
    ),
  );
}
