import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  void sound(int snum){
    final player = AudioCache();
    player.play('note$snum.wav');
  }

  Widget buildkey({Color color,int numb}){
    return Expanded(
      // ignore: missing_required_param
      child:FlatButton(
        color:color,
        onPressed: (){
          sound(numb);
        },
      ),
    );
  }
  build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:Text('Different Types Of Sounds',
          style:TextStyle(fontSize: 25.0),),
          centerTitle:true),
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildkey(color:Colors.red,numb:1),
            buildkey(color:Colors.green,numb:2),
            buildkey(color:Colors.purple,numb:3),
            buildkey(color:Colors.orange,numb:4),
            buildkey(color:Colors.yellow,numb:5),
            buildkey(color:Colors.pink,numb:6),
            buildkey(color:Colors.white,numb:7),

          ],)

      ), );
    }
}

