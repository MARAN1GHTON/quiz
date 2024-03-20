import 'package:da_blyat_voprosi_7/flutter_test_main.dart';
// import 'package:da_blyat_voprosi_7/gradient_container.dart';
import 'package:da_blyat_voprosi_7/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:da_blyat_voprosi_7/questions.dart';
import 'package:da_blyat_voprosi_7/models/results_screen.dart';

class FlutterQuiz extends StatefulWidget {
  const FlutterQuiz({super.key});

  @override
  State<FlutterQuiz> createState() {
    return _FlutterQuizState();
  }
}

class _FlutterQuizState extends State<FlutterQuiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'flutter-test';
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = FlutterTest(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void tryAgain() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = FlutterTest(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelecrAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget =
          ResultsScreen(chosenAnswers: selectedAnswers, tryAgain: tryAgain);
    }

    // final screenWidget = activeScreen == 'flutter-test'
    //     ? FlutterTest(switchScreen)
    //     : const QuestionsScreen();
    return screenWidget;
    // return const GradientContainer.black();
  }
}
