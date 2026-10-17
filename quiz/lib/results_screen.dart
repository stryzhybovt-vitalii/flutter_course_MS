import 'package:flutter/material.dart';
import 'package:quiz/page_title.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    required this.listAnswers,
    required this.restartQuiz,
    super.key,
  });

  final List<String> listAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < listAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question_text': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': listAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final dataSummary = getSummaryData();
    final numQuestionsLength = questions.length;
    final numAnswersLength = dataSummary.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PageTitle(
              text:
                  'You asnwered $numAnswersLength out of $numQuestionsLength cuestions correctly!',
            ),
            SizedBox(
              height: 30,
            ),
            QuestionsSummary(dataSummary),
            SizedBox(height: 20),
            TextButton.icon(
              onPressed: () => restartQuiz(),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(
                Icons.refresh,
              ),
              label: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
