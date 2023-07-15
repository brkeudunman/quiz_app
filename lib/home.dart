import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final void Function() startQuiz;

  const Home(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // <-- alignments
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(142, 255, 255, 255),
        ),
        const SizedBox(height: 10),
        const Text(
          "Learn by solving",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        OutlinedButton.icon(
          //todo
          onPressed: () {
            startQuiz();
          },
          label: const Text(
            "Click to begin",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          icon: const Icon(Icons.arrow_forward, color: Colors.white),
        )
      ],
    );
  }
}
