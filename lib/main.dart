import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceeStructure());
}


class DiceeStructure extends StatelessWidget {
  const DiceeStructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white70,
          body: Dicee(),
          appBar: AppBar(
            title: Center(child: Text('Dicee Game')),
            backgroundColor: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}


class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
