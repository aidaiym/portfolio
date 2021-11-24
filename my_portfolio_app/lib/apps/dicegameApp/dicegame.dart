import 'package:flutter/material.dart';
import 'dart:math';

class DiceGame extends StatefulWidget {
  const DiceGame({Key key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}
class _DiceGameState extends State<DiceGame> {
  int rightDice = 1;
  int leftDice = 1;

  rollDices() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: ElevatedButton(
            child: Image.asset('assets/images/dice$leftDice.png'),
            onPressed: () => rollDices(),
          )),
          Expanded(
              child: ElevatedButton(
            child: Image.asset('assets/images/dice$rightDice.png'),
            onPressed: () => rollDices(),
          ))
        ],
      ),
    );
  }
}
// 