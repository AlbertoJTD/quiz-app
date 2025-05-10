import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity, // Take the full width of the screen
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Here goes a question!',
            style: TextStyle(
              color:Colors.white,
            ),
          ),
      
          SizedBox(height: 20),
      
          AwnswerButton(
            answerText: 'Answer 1',
            onTap: () {}
          ),
          AwnswerButton(
            answerText: 'Answer 1',
            onTap: () {}
          ),
          AwnswerButton(
            answerText: 'Answer 1',
            onTap: () {}
          ),
          AwnswerButton(
            answerText: 'Answer 1',
            onTap: () {}
          ),
        ],
      ),
    );
  }
}