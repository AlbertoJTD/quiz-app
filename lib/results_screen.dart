import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

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

            Text(
              'Here goes the list of answers',
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