import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key });

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRollNumber = 2;

  void rollDice() {
    setState(() {
      diceRollNumber = Random().nextInt(7);
    });
  }

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$diceRollNumber.png',
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Roll'),
        ),
      ],
    );
  }
}