import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('The question... '),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Option 1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Option 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Option 3'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Option 4'),
        ),
      ],
    );
  }
}
