import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/theme.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Question...',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 1',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
