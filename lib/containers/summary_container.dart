import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryContainer extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const SummaryContainer({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map(
              (summary) => Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      ((summary["idx"] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          summary["question"] as String,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          summary["userAnswer"] as String,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: summary["userAnswer"] ==
                                        summary["correctAnswer"]
                                    ? const Color.fromARGB(255, 114, 202, 215)
                                    : const Color.fromARGB(255, 215, 114, 114)),
                          ),
                        ),
                        Text(
                          summary["correctAnswer"] as String,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 114, 202, 215)),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
