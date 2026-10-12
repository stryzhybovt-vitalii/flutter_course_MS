import 'package:flutter/material.dart';
import 'package:quiz/page_title.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectAnswer, super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void changeQuestion(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);

      // currentQuestionIndex = currrentQuestionIndex + 1;
      // currentQuestionIndex += 1;

      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

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

            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  changeQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
