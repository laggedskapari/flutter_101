import 'package:flutter/material.dart';
import 'package:adv_basic_app1/answer_button.dart';

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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'The question... ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white),
          ),
          const SizedBox(height: 10),
          AnswerButton(option: 'Option A', onTap: () {}),
          AnswerButton(option: 'Option B', onTap: () {}),
          AnswerButton(option: 'Option C', onTap: () {}),
          AnswerButton(option: 'Option D', onTap: () {}),
        ],
      ),
    );
  }
}
