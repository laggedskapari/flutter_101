import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.option, required this.onTap});

  final void Function() onTap;
  final String option;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          foregroundColor: const Color.fromARGB(255, 255, 220, 129)),
      child: Text(
        option,
        style: const TextStyle(fontFamily: 'JetBrains', fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
