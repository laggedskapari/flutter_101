import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start',
            style: TextStyle(fontFamily: 'JetBrains', fontSize: 30),
          ),
        )
      ],
    );
  }
}
