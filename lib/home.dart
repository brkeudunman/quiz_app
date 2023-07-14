import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app/containers/gradient_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(childrenWidgets: [
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 200,
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
      OutlinedButton( //todo
        onPressed: () {},
        child: const Text(
          "Click to begin",
          style: TextStyle(color: Colors.white70),
        ),
      )
    ], colors: [
      Colors.deepPurple.shade300,
      Colors.deepPurple.shade400,
      Colors.deepPurple.shade500,
    ]);
  }
}
