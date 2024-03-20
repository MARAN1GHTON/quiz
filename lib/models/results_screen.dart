import 'package:da_blyat_voprosi_7/models/questions_summary.dart';
import 'package:da_blyat_voprosi_7/questions.dart';
import 'package:flutter/material.dart';
// import 'package:da_blyat_voprosi_7/flutter_test_main.dart';
// import 'package:da_blyat_voprosi_7/flutter_quiz_switch_screen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.tryAgain, required this.chosenAnswers});

  final List<String> chosenAnswers;
  final void Function() tryAgain;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question-index': i,
          'question': questions[i].text,
          'correct-answer': questions[i].answers[0],
          'user-answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user-answer'] == data['correct-answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Ебать, ты ответил правильно на $numCorrectQuestions из $numTotalQuestions вопросов!',
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 247, 218, 218),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              //const Text(',kznm'),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              // TextButton(
              //   onPressed: () {},
              //   child: const Text(
              //     'Да блять',
              //     style: TextStyle(
              //       fontSize: 24,
              //       color: Color.fromARGB(255, 247, 218, 218),
              //     ),
              //   ),
              // ),
              OutlinedButton.icon(
                  onPressed: tryAgain,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 10,
                    ),
                    foregroundColor: const Color.fromARGB(255, 255, 207, 207),
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  icon: const Icon(Icons.child_care),
                  label: const Text('Хочу ещё раз! '))
            ]),
      ),
    );
  }
}
