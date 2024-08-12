import 'package:flutter/material.dart';
import 'package:quiz_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            width: 300,
            image: AssetImage(
              'assets/quiz-logo.png',
            ),
            color: Color.fromARGB(150, 210, 223, 247),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Lets Learn Flutter',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            icon: const Icon(Icons.arrow_right_rounded),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
