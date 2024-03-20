import 'package:da_blyat_voprosi_7/flutter_quiz_switch_screen.dart';
import 'package:flutter/material.dart';
//import 'package:da_blyat_voprosi_7/flutter_test.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.black({super.key})
      : color1 = const Color.fromARGB(255, 10, 15, 75),
        color2 = const Color.fromARGB(255, 15, 15, 15);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const FlutterQuiz(),
      // child: Container(),
    );
  }
}
