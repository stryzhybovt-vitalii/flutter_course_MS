import 'package:flutter/material.dart';
import 'package:quiz/styled_text.dart';

const endAlignment = Alignment.bottomRight;
const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}): super(key:key); // first variant, how you can send key to Stateless Widget
  const GradientContainer(
    // first var how to use positions or named arguments
    /* this.colorList, */
    this.color1,
    this.color2, {
    // first var how to use positions or named arguments
    /* required this.colorList, */
    super.key,
  }); // second variant, how you can send key to parent class (Stateless Widget)

  // first var how to use positions or named arguments(use list)
  /* final List<Color> colorList; */

  // use one more constructor with Initializer List
  const GradientContainer.prettyBg({super.key})
    : color1 = Colors.pink,
      color2 = Colors.pinkAccent;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          /* 
          // first var, send color list to colors
          colors: colorList,
           */

          // second var, send 2 colors to list
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
