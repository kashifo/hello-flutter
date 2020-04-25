import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class XyloPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _colorButton(color: Colors.red, songNum: 1),
            _colorButton(color: Colors.blue, songNum: 2),
            _colorButton(color: Colors.green, songNum: 3),
            _colorButton(color: Colors.orange, songNum: 4),
            _colorButton(color: Colors.purple, songNum: 5),
            _colorButton(color: Colors.pink, songNum: 6),
            _colorButton(color: Colors.yellow, songNum: 7),
          ],
        ),
      ),
    );
  }

  Widget _colorButton({Color color, int songNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          AssetsAudioPlayer.newPlayer()
              .open(Audio("assets/xylo/note$songNum.wav"));
        },
      ),
    );
  }
}
