import 'package:flutter/material.dart';
import 'package:adv_basic_app1/answer_button.dart';
import 'package:adv_basic_app1/model/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
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
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(80),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                  fontFamily: 'JetBrainsMono-Regular', fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ...currentQuestion.getShuffledOptions().map((option) {
              return AnswerButton(option: option, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
