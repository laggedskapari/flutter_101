import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.initiateTracker});

  final void Function() initiateTracker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 50, 52, 55),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Expense Tracker',
              style: TextStyle(
                  fontFamily: 'JetBrains Mono',
                  fontWeight: FontWeight.w700,
                  color: Colors.limeAccent),
            ),
            OutlinedButton(
              onPressed: initiateTracker,
              child: const Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
      ),
    );
  }
}
