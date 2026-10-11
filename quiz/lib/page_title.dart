import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({required this.text, super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight(600),
      ),
      textAlign: TextAlign.center,
    );
  }
}
