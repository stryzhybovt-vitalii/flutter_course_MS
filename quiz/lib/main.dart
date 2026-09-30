import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        body: const GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}): super(key:key); // first variant, how you can send key to Stateless Widget
  const GradientContainer({
    super.key,
  }); // second variant, how you can send key to parent class (Stateless Widget)

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.amber,
            Colors.amberAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'First App',
          style: TextStyle(
            color: Color.fromARGB(255, 77, 55, 48),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
