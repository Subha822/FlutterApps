import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dicee',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0, // removes AppBar shadow for a clean divider
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.white,   // white divider
          thickness: 2,          // line thickness
          height: 2,             // spacing
        ),
        Expanded(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: changeDiceFace,
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: changeDiceFace,
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
