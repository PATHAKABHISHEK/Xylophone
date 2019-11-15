import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

Expanded playButton({Color color, int someAudioNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        final player = AudioCache();
        player.play('note$someAudioNumber.wav');
      },
      child: Container(
        color: color,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.purple),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            playButton(color: Colors.red, someAudioNumber: 1),
            playButton(color: Colors.green, someAudioNumber: 2),
            playButton(color: Colors.pink, someAudioNumber: 3),
            playButton(color: Colors.blue, someAudioNumber: 4),
            playButton(color: Colors.pinkAccent, someAudioNumber: 5),
            playButton(color: Colors.greenAccent, someAudioNumber: 6),
            playButton(color: Colors.redAccent, someAudioNumber: 7),
          ],
        ),
      ),
    );
  }
}
