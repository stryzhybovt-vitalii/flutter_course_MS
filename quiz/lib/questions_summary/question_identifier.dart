import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    required this.questionIndex,
    required this.isCorrectAnswer,
    super.key,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Colors.lightGreen
            : const Color.fromARGB(255, 214, 129, 158),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight(600),
        ),
      ),
    );
  }
}
