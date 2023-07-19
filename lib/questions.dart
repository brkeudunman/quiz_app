import 'package:flutter/material.dart';
import 'package:quiz_app/common/question_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  const Questions({super.key, required this.onSelectAnswer});

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            "${(currentQuestionIndex) +1 } - ${currentQuestion.text}",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return QuestionButton(
              answerText: answer,
              onTap: () {
                answerQuestion(answer);
              },
            );
          })
        ],
      ),
    );
  }
}
