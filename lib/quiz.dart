import 'package:flutter/material.dart';

import 'package:quiz_app/start_page.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  final List<String> selectedAnswer = [];

  @override
  void initState() {
    activeScreen = StartPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 68, 16, 157)
          ),
          child: activeScreen,
        ),
      )
    );
  }
}
