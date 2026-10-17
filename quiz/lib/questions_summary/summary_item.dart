import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({required this.dataItem, super.key});

  final Map<String, Object> dataItem;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        dataItem['user_answer'] == dataItem['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: dataItem['question_index'] as int,
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataItem['question_text'] as String,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 5,
              ),

              Text(
                dataItem['user_answer'] as String,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Colors.blueGrey,
                ),
              ),

              Text(
                dataItem['correct_answer'] as String,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
