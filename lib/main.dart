import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Dicee(),
        appBar: AppBar(
          title: Text('Dicee Game'),
          backgroundColor: Colors.purpleAccent,
        ),
      ),
    ),
  ));
}

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('images/dice1.png'),
        Image.asset('images/dice2.png')
      ],
    );
  }
}
