import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNotes(int audioFileNumber) {
    final player = AudioCache();
    player.play('note$audioFileNumber.wav');
    print('audio played with number $audioFileNumber');
  }

  Expanded buildKeys({Color color, int audioFileNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNotes(audioFileNumber);
        },
        color: color,
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKeys(color: Colors.red, audioFileNumber: 1),
                buildKeys(color: Colors.orange, audioFileNumber: 2),
                buildKeys(color: Colors.blue, audioFileNumber: 3),
                buildKeys(color: Colors.yellow, audioFileNumber: 4),
                buildKeys(color: Colors.teal, audioFileNumber: 5),
                buildKeys(color: Colors.purple, audioFileNumber: 6),
                buildKeys(color: Colors.green, audioFileNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
