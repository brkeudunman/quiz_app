import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Widget> childrenWidgets;
  final List<Color> colors;

  const GradientContainer(
      {super.key, required this.childrenWidgets, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors),
      ),
      child: Center(
          heightFactor: 5,
          child: SizedBox(
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // <-- alignments
              children: childrenWidgets,
            ),
          )),
    );
  }
}
