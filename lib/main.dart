// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    const  MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Dice App created by Bilal')
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const DiceChange(),
      ),
    );
  }
}

class DiceChange extends StatefulWidget {
  const DiceChange({super.key});

  @override
  _DiceChangeState createState() => _DiceChangeState();
}

class _DiceChangeState extends State<DiceChange> {
  int num1 = 1;
  int num2 = 2;
  void changeState() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      num1 = Random().nextInt(6) + 1;
      num2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextButton(
                child: Image.asset('images/dice$num1.png'),
                onPressed: () {
                  changeState();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextButton(
                child: Image.asset('images/dice$num2.png'),
                onPressed: () {
                  changeState();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
