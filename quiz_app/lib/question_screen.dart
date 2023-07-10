import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/model/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentQuestionIndex];
    return Center(
      child: Column(
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'JetBrains',
              color: Colors.limeAccent
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledOptions().map((option) {
            return AnswerButton(
              option: option,
              onTap: answerQuestion,
            );
          })
        ],
      ),
    );
  }
}
