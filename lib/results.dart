import 'package:flutter/material.dart';
import 'package:quiz_app/theme.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

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
            Text(
              'List of answers and questions...',
              style: primaryTextStyle,
            ),
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
