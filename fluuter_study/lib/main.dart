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

  Expanded buildKey(Color colors, int number) {
    return (Expanded(
      child: FlatButton(
        onPressed: () {
          playSound('note$number.wav');
        },
        color: colors,
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
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.blue, 5),
                buildKey(Colors.blueAccent, 6),
                buildKey(Colors.purple, 7),
              ],
            ),
          )),
    );
  }
}
