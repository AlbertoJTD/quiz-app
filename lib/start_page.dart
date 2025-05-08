import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            // Try to avoid this way
            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 200,
            //     height: 200,
            //   ),
            // ),
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              height: 200,
              color: const Color.fromARGB(150, 255, 255, 255)
            ),

            const SizedBox(height: 50),

            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 15,
                ),
              ),
              label: const Text('Start Quiz!'),
              icon: Icon(
                Icons.arrow_right_alt
              ),
            ),
          ],
      ),
    );
  }
}
