import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/containers/summary_container.dart';
import 'package:quiz_app/data/questions.dart';

class Result extends StatelessWidget {
  final List<String> answers;
  final void Function() switchWidget;

  const Result({super.key, required this.answers, required this.switchWidget});

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < questions.length; i++) {
      summary.add({
        "idx": i,
        "question": questions[i].text,
        "correctAnswer": questions[i].answers[0],
        "userAnswer": answers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final totalQuestions = questions.length;
    final totalCorrectAnswers = summaryData.where((summary) {
      return summary["correctAnswer"] == summary["userAnswer"];
    }).length;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "You answered $totalCorrectAnswers out of $totalQuestions questions correctly",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SummaryContainer(summaryData: summaryData),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {},
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white70,
                side: const BorderSide(width: 1.0, color: Colors.white70),
              ),
              onPressed: switchWidget,
              icon: const Icon(
                Icons.restart_alt,
              ),
              label: const Text("Try Again"),
            ),
          ),
        ],
      ),
    );
  }
}
