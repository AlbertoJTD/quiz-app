import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswer, required this.resetQuiz});

  final List<String> chosenAnswer;
  final void Function() resetQuiz;

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
    final summaryData = getSummary();
    final totalNumberOfQuestions = questions.length;
    final correctNumberOfQuestions = summaryData.where((questionData) {
      return questionData['is_correct'] as bool;
    }).length;

    return SizedBox(
      width: double.infinity, // Take the full width of the screen
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctNumberOfQuestions out of $totalNumberOfQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            QuestionsSummary(
              summaryData: summaryData
            ),

            SizedBox(height: 30),

            TextButton.icon(
              onPressed: resetQuiz,
              label: Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              icon: Icon(
                Icons.refresh_outlined,
                color: Colors.white,
                size: 18,
                weight: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}