import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {


  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
  var rand = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = rand.nextInt(6) + 1;
                  rightDiceNumber = rand.nextInt(6) + 1;
                } );
              },
              child: Image.asset('images/dice${leftDiceNumber}.png'),
            ), // FlatButton
          ), // Expanded
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDiceNumber = rand.nextInt(6) + 1;
                  rightDiceNumber = rand.nextInt(6) + 1;
                } );
              },
              child: Image.asset('images/dice${rightDiceNumber}.png'),
            ), // FlatButton
          ), // Expanded
        ], // <Widget>[]
      ), // Row
    ); // Center
  }
}


