import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/model/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedOptions});

  final List<String> selectedOptions;

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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('You have score X out of Y!'),
          const SizedBox(
            height: 20,
          ),
          const Text('Preview here...!'),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
