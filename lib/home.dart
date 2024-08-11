import 'package:flutter/material.dart';
import 'package:quiz_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            child: Text(
              'Start Quiz',
              style: primaryTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
