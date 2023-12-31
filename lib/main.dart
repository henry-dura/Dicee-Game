import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceeStructure());
}

class DiceeStructure extends StatelessWidget {
  const DiceeStructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF03A9F4),
          body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Dicee(),
          ),
          appBar: AppBar(
            title: const Center(
                child: Text(
              'Dicee Game',
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            )),
            backgroundColor: Colors.blueAccent,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'SCORE: ${leftDiceNumber + rightDiceNumber}',
          style: const TextStyle(fontSize: 40, color: Colors.white),
        ),
        Row(
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
      ],
    );
  }
}
