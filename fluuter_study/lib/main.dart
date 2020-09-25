import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  void playSound(String a) {
    final player = new AudioCache();
    player.play(a);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            FlatButton(
              onPressed: () {
                playSound('note1.wav');
              },
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                playSound('note2.wav');
              },
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                playSound('note3.wav');
              },
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: () {
                playSound('note4.wav');
              },
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                playSound('note5.wav');
              },
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                playSound('note6.wav');
              },
              color: Colors.blueAccent,
            ),
            FlatButton(
              onPressed: () {
                playSound('note7.wav');
              },
              color: Colors.purple,
            ),
          ],
        ),
      )),
    );
  }
}
