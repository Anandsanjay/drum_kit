import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(DrumKit());

//int num=1;

class DrumKit extends StatelessWidget {
  void playsound(String soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.mp3');
    // player.play('tom-2.mp3');
  }

  Widget buildKey({Color color, String soundNumber}) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('images/$soundNumber.png'),
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    buildKey(color: Colors.white, soundNumber: 'crash'),
                    buildKey(color: Colors.white, soundNumber: 'kick-bass'),
                  ],
                ),
                Row(
                  children: [
                    buildKey(color: Colors.white, soundNumber: 'snare'),
                    buildKey(color: Colors.white, soundNumber: 'tom-1'),
                  ],
                ),
                Row(
                  children: [
                    buildKey(color: Colors.white, soundNumber: 'tom-2'),
                    buildKey(color: Colors.white, soundNumber: 'tom-3'),
                    buildKey(color: Colors.white, soundNumber: 'tom-4'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
