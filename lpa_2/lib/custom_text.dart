import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hi, Rajat!',
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}
