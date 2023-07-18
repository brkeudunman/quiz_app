import 'package:flutter/material.dart';
import 'package:quiz_app/containers/gradient_container.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var activeWidget = "start-screen";

  void switchWidget() {
    setState(() {
      activeWidget = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Home(switchWidget);
    if (activeWidget == "questions-screen") {
      screenWidget = const Questions();
    }
    return GradientContainer(colors: [
      Colors.deepPurple.shade400,
      Colors.deepPurple.shade500,
      Colors.deepPurple.shade600
    ], child: screenWidget);
  }
}
