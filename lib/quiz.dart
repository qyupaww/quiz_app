import 'package:flutter/material.dart';
import "package:quiz_app/home.dart";
import "package:quiz_app/questions.dart";
import "package:quiz_app/theme.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const Questions();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: primaryColor),
          child: screenWidget,
        ),
      ),
    );
  }
}
