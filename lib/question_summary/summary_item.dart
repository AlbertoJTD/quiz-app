import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/question_summary/question_identifier.dart';
import 'package:quiz_app/models/quiz_result.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final QuizResult itemData;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: itemData.questionIndex + 1,
            isCorrectAnswer: itemData.isCorrect,
          ),
      
          const SizedBox(width: 5),
      
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData.question,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )
                ),
                const SizedBox(height: 5),
      
                Text(
                  itemData.userAnswer,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                    fontSize: 16,
                  ),
                ),
      
                Text(
                  itemData.correctAnswer,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}