import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  void ClickLeft() {
    Random random = new Random();
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
    });
  }

  void ClickRight() {
    Random random = new Random();
    setState(() {
      rightDiceNumber = random.nextInt(6) + 1;
    });
  }

  void ClickBoth() {
    ClickLeft();
    ClickRight();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: ClickBoth,
      child: Center(
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: ClickLeft,
                  child: Image.asset('images/dice${leftDiceNumber}.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: ClickRight,
                  child: Image.asset('images/dice${rightDiceNumber}.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
