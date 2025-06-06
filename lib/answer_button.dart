import 'package:flutter/material.dart';

class AwnswerButton extends StatelessWidget {
  const AwnswerButton({
    super.key,
    required this.answerText,
    required this.onTap
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 25, 3, 45),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 60
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}