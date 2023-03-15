import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void sound(int soundno){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundno.wav'));
  }
  Expanded buildExp(Color color, int num){
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: ()  {
          sound(num);
        },
        splashColor: Colors.transparent,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone',style: TextStyle(color: Colors.white),),),
          backgroundColor: Colors.red[900],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExp(Colors.red,1),
              buildExp(Colors.orangeAccent,2),
              buildExp(Colors.orange,3),
              buildExp(Colors.yellow,4),
              buildExp(Colors.greenAccent,5),
              buildExp(Colors.green,6),
              buildExp(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
