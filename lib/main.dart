import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

Expanded playButton({Color color}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        final player = AudioCache();
        player.play('something');
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
            playButton(color: Colors.red),
            playButton(color: Colors.green),
            playButton(color: Colors.pink),
            playButton(color: Colors.blue),
            playButton(color: Colors.pinkAccent),
            playButton(color: Colors.greenAccent),
            playButton(color: Colors.redAccent),
          ],
        ),
      ),
    );
  }
}
