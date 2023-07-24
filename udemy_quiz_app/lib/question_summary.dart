import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.questionSummaryData});

  final List<Map<String, Object>> questionSummaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 350,
      child: SingleChildScrollView(
        child: Column(
          children: questionSummaryData.map((data) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: data['correctOption'] == data['selectedOption'] ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                            fontFamily: 'JetBrainsBold', color: Colors.yellow),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data['selectedOption'] as String,
                        style: TextStyle(
                            fontFamily: 'JetBrainsReg', color: data['correctOption'] == data['selectedOption'] ? Colors.green : Colors.red),
                      ),
                      Text(
                        data['correctOption'] as String,
                        style: const TextStyle(
                            fontFamily: 'JetBrainsReg', color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
