import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const QuestionButton(
      {super.key, required this.answerText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: const Color.fromARGB(169, 161, 74, 253),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(textAlign: TextAlign.center, answerText),
    );
  }
}
