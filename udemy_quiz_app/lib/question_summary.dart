import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({ super.key, required this.questionSummaryData});

  final List<Map<String, Object>> questionSummaryData;

  @override
  Widget build(BuildContext context) {
    return Column(children: questionSummaryData.map((data) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(((data['question_index'] as int) + 1).toString()),
          Column(children: [
            Text(data['question'] as String, style: const TextStyle(fontFamily: 'JetBrainsBold', color: Colors.yellow),),
            const SizedBox(height: 10,),
            Text(data['selectedOption'] as String, style: const TextStyle(fontFamily: 'JetBrainsReg', color: Colors.white),),
            Text(data['correctOption'] as String, style: const TextStyle(fontFamily: 'JetBrainsReg', color: Colors.white),),
          ],),
        ],);
    }).toList(),);
  }
}