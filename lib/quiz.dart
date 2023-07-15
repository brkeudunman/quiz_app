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
  Widget? activeWidget;

  @override
  void initState() {
    activeWidget = Home(switchWidget);
    super.initState();
  }

  void switchWidget() {
    setState(() {
      activeWidget = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
        colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade500],
        child: activeWidget);
  }
}
