import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.start});

  final void Function() start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Expense Tracker',
            ),
            OutlinedButton(onPressed: start, child: const Icon(Icons.arrow_right_alt))
          ],
        ),
      ),
    );
  }
}
