import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({required this.text, super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight(600),
      ),
    );
  }
}
