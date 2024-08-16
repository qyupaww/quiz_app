import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/theme.dart';
import 'package:quiz_app/data/quest.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = quest[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(
          40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answer.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}
