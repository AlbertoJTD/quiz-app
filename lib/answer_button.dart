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
        
      ),
      child: Text(answerText),
    );
  }
}