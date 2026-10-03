import 'package:flutter/material.dart';
import 'package:randomness_die/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        body: const GradientContainer(
          /* [
          // first var, send color list to colors
          Colors.amberAccent,
          Colors.amber,
        ] */

          // second var, send 2 colors to list
          Colors.amberAccent,
          Colors.amber,
        ),
      ),
    ),
  );
}
