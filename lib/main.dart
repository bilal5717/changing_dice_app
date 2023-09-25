import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Dice App' ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),
              ),
            ),
          ),
        body: SafeArea(
          child: Center(
            child: Row(
                children: <Widget>[
                  Expanded(

                    child: TextButton(
                      child: Container(

                        padding: const EdgeInsets.all(14),
                        child: Image.asset('images/dice1.png'),
                      ),
                      onPressed: () {
                        print("button pressed");
                      },
                    ),
                  ),
                  Expanded(

                    child: TextButton(
                      child: Container(

                        padding: const EdgeInsets.all(14),
                        child: Image.asset('images/dice2.png'),
                      ),
                      onPressed: () {},
                    ),
                  ),//Expanded
                ],
            ),
          ),
        ),
      ),
    );
  }
}