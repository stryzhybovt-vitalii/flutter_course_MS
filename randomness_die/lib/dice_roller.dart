import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),

        SizedBox(
          height: 30,
        ),

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 77, 55, 48),
            textStyle: TextStyle(fontSize: 24),
          ),
          child: Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }
}
