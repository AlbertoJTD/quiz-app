import 'dart:ffi';
import 'package:flutter/material.dart';

import 'package:quiz_app/question_summary/summary_item.dart';
import 'package:quiz_app/models/quiz_result.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<QuizResult> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(
              itemData: data,
            );
          }).toList()
        ),
      ),
    );
  }
}