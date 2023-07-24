import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/model/questions.dart';
import 'package:udemy_quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedOptions, required this.restartQuiz});

  final List<String> selectedOptions;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedOptions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correctOption': questions[i].options[0],
        'selectedOption': selectedOptions[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctResponses = summaryData.where((element) => element['correctOption'] == element['selectedOption']).length;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('You have score $correctResponses out of $totalQuestions !', style: const TextStyle(color: Colors.white),),
          const SizedBox(
            height: 20,
          ),
          QuestionSummary(questionSummaryData: summaryData),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: restartQuiz,
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
