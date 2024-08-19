import 'package:flutter/material.dart';
import 'package:quiz_app/theme.dart';
import 'package:quiz_app/data/quest.dart';
import 'package:quiz_app/models/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': quest[i].text,
        'correct_answer': quest[i].answer[0],
        'user_answer': choosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(
          40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered X out of Y questions correctly!',
              style: primaryTextStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Restart Quiz!',
                style: primaryTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
