import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();

    activeScreen = StartScreen(startQuiz);
  }

  void startQuiz() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}
