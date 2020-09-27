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

  Widget buildKey(int number) {
    return (Expanded(
      child: FlatButton(
        onPressed: () {
          playSound('note$number.wav');
        },
        color: Colors.red,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1),
                buildKey(2),
                buildKey(3),
                buildKey(4),
                buildKey(5),
                buildKey(6),
                buildKey(7),
              ],
            ),
          )),
    );
  }
}
