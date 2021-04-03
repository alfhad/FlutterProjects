import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {

  void playSound(int num){
    AudioCache player = AudioCache();
    player.load('note$num.wav');
    player.play(
      'note$num.wav',
      mode: PlayerMode.LOW_LATENCY,
      stayAwake: false
    );
  }

  Widget buildButton(num, color){
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: (){
          playSound(num);
        },
        color: color, child: null,
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
            children: <Widget>[
              buildButton(1, Colors.red),
              buildButton(2, Colors.orange),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.green),
              buildButton(5, Colors.teal),
              buildButton(6, Colors.blue),
              buildButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
