import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List<String> answers;
  final void Function() switchWidget;

  const Result({super.key, required this.answers, required this.switchWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("You answered x out of Y questions correctly"),
          const SizedBox(
            height: 30,
          ),
          ...answers.map(
            (answer) => Text(
              answer,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: TextButton.icon(
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
