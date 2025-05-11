class QuizResult {
  const QuizResult({
    required this.questionIndex,
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
    required this.isCorrect,
  });

  final int questionIndex;
  final String question;
  final String userAnswer;
  final String correctAnswer;
  final bool isCorrect;
}