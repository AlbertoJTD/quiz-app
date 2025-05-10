import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity, // Take the full width of the screen
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: TextStyle(
              color:Colors.white,
            ),
          ),

          SizedBox(height: 20),

          // Spreading values
          ...currentQuestion.answers.map((answer) {
            return AwnswerButton(
              answerText: answer,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}