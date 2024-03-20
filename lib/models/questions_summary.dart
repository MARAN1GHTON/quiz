import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color correctAnswerColor = const Color.fromARGB(255, 121, 245, 148);
    Color incorrectAnswerColor = const Color.fromARGB(255, 252, 1, 64);
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 500,
        width: 100,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: summaryData.map((data) {
              return Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        data['correct-answer'] == data['user-answer']
                            ? correctAnswerColor
                            : incorrectAnswerColor,
                    child: Text(
                      ((data['question-index'] as int) + 1).toString(),
                      style: const TextStyle(
                          fontSize: 28,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 189, 189)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user-answer'] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 247, 218, 218)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct-answer'] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 24, 255, 82)),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
