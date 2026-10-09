import 'package:flutter/material.dart';
import 'package:quiz/page_title.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PageTitle(text: currentQuestion.question),

            SizedBox(
              height: 50,
            ),

            ...currentQuestion.answers.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
