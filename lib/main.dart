import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int songNumber) {
    final player = AudioCache();
    player.play('note$songNumber.wav');
  }

  Widget buildKey({Color color, int songNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(songNo);
        },
      ),
    );
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
              buildKey(color: Colors.red, songNo: 1),
              buildKey(color: Colors.orange, songNo: 2),
              buildKey(color: Colors.yellow, songNo: 3),
              buildKey(color: Colors.green, songNo: 4),
              buildKey(color: Colors.teal, songNo: 5),
              buildKey(color: Colors.blue, songNo: 6),
              buildKey(color: Colors.purple, songNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
