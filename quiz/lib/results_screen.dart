import 'package:flutter/material.dart';
import 'package:quiz/page_title.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.listAnswers, super.key});

  final List<String> listAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PageTitle(text: 'You asnwered X out of Y cuestions correctly!'),
            SizedBox(
              height: 30,
            ),
            Text('list of answers'),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
