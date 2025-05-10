import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      var currentQuestion = questions[i];

      summary.add({
        'question_index': i,
        'question': currentQuestion.question,
        'user_answer': chosenAnswer[i],
        'correct_answer': currentQuestion.answers[0],
        'is_correct': chosenAnswer[i] == currentQuestion.answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, // Take the full width of the screen
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You answered X out of Y questions correctly!',
            ),

            SizedBox(height: 20),

            QuestionsSummary(
              summaryData: getSummary()
            ),

            // ListView(
            //   scrollDirection: Axis.vertical,
            //   children: [
            //     Text(
            //       'Question 1: Correct',
            //       style: TextStyle(
            //         color: Colors.green,
            //         fontSize: 18,
            //       ),
            //     ),
            //     Text(
            //       'Question 2: Incorrect',
            //       style: TextStyle(
            //         color: Colors.red,
            //         fontSize: 18,
            //       ),
            //     ),
            //     Text(
            //       'Question 3: Correct',
            //       style: TextStyle(
            //         color: Colors.green,
            //         fontSize: 18,
            //       ),
            //     ),
            //   ]
            // ),

            SizedBox(height: 20),

            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Restart Quiz'
              ),
              icon: Icon(
                Icons.refresh_outlined
              ),
            ),
          ],
        ),
      ),
    );
  }
}