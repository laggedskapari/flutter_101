import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/model/questions.dart';
import 'package:udemy_quiz_app/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Column(
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              fontFamily: 'JetBrainsBold',
              fontSize: 20,
              color: Color.fromARGB(255, 255, 210, 119),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledOptions().map((option) {
            return AnswerButton(
                option: option,
                onTap: () {
                  answerQuestion();
                });
          })
        ],
      ),
    );
  }
}
