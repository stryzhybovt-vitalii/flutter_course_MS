import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> listAnswers = [];

  void onSelectAnswer(String answer) {
    listAnswers.add(answer);

    if (questions.length == listAnswers.length) {
      setState(() {
        activeScreen = 'results-screen';

        listAnswers.clear();
      });
    }
  }

  // variant with life - cycle
  // Widget? activeScreen;

  // variant - ternary expression or if...else
  String activeScreen = 'start-screen';

  // variant with life - cycle
  // @override
  // void initState() {
  //   super.initState();

  //   activeScreen = StartScreen(startQuiz);
  // }

  // variant - if...else
  void startQuiz() {
    setState(() {
      // variant - with life - cycle
      // activeScreen = QuestionsScreen();

      // variant - ternary expression or if...else
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // variant - if...else
    Widget screenWidget = StartScreen(startQuiz);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: onSelectAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(listAnswers: listAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.lightBlue,
                Colors.lightBlueAccent,
              ],
            ),
          ),
          child: screenWidget,
          // variant with life - cycle
          // child: activeScreen,
          /*
          // variant - ternary expression
           child: activeScreen == 'start-screen'
              ? StartScreen(startQuiz)
              : QuestionsScreen(), */
        ),
      ),
    );
  }
}
