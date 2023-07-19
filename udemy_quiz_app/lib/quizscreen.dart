import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/model/questions.dart';
import 'package:udemy_quiz_app/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onSelectOption});

  final void Function(String option) onSelectOption;

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String option) {
    widget.onSelectOption(option);
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
                    answerQuestion(option);
                  });
            })
          ],
        ),
      ),
    );
  }
}
