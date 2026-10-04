import 'package:flutter/material.dart';
import 'package:quiz/page_title.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),

          SizedBox(
            height: 70,
          ),

          Padding(
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            child: PageTitle(text: 'Learn Flutter the fun way!'),
          ),

          OutlinedButton.icon(
            onPressed: () {},

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,

              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20,
                vertical: 5,
              ),

              side: BorderSide(
                color: Colors.white,
                width: 2,
              ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
            ),

            icon: Icon(Icons.arrow_right_alt),

            label: Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
