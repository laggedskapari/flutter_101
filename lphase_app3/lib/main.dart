import 'package:flutter/material.dart';

void rollDice() {
  // ..
}

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice1.png',
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ElevatedButton(
                  onPressed: rollDice,
                  child: Text('Roll Dice'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
