import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  //deklarasikan variabel
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //membuat function
  void rubahDadu() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ), // Images.asset
              ), // TextButton
            ), // Expanded
            Expanded(
              child: TextButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ), // Image.asset
              ), // TextButton
            ), // Expanded
          ],
        ), // Row
      ), // Center
    ); // Scaffold
  }
}
