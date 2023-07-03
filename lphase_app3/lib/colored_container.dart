import 'package:flutter/material.dart';
import 'package:lphase_app3/dice_roller.dart';

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Center(
        child: DiceRoller(),
      ),
    );
  }
}
