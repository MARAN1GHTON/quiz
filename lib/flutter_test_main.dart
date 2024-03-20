import 'package:flutter/material.dart';
// import 'dart:math';
//import 'package:da_blyat_voprosi_7/center_text.dart';

// final randomizer = Random();

class FlutterTest extends StatelessWidget {
  const FlutterTest(this.tryAgain, {super.key});

  final void Function() tryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(179, 255, 187, 187),
          ),
          const SizedBox(height: 50),
          const Text(
            'Учить Flutter это пиздец',
            style: TextStyle(
                fontSize: 28, color: Color.fromARGB(255, 247, 218, 218)),
          ),
          const SizedBox(height: 20),
          // TextButton(
          //   onPressed: () {},
          //   child: Text('hfyljvysq ntrcn'),
          // ),
          OutlinedButton.icon(
              onPressed: tryAgain,
              // onPressed: () {
              //   print('z dfi hjn t,fk');
              // },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                foregroundColor: const Color.fromARGB(255, 255, 207, 207),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: const Icon(Icons.currency_ruble_sharp),
              label: const Text('Чего блять? '))
        ],
      ),
    );
  }

  // @override
  // State<FlutterTest> createState() {
  //   return _FlutterTestState();
  // }
}

/*

class _FlutterTestState extends State<FlutterTest> {
  // var currentFlutterTest = randomizer.nextInt(6) + 1;

  void flutterQuiz() {
    setState(() {
      //    currentFlutterTest = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'lib/assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(179, 255, 187, 187),
        ),
        const SizedBox(height: 50),
        const Text(
          'Учить Flutter это пиздец',
          style: TextStyle(
              fontSize: 28, color: Color.fromARGB(255, 247, 218, 218)),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
            onPressed: flutterQuiz,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(),
              foregroundColor: const Color.fromARGB(255, 255, 207, 207),
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            icon: const Icon(Icons.currency_ruble_sharp),
            label: const Text('Чего блять? '))
      ],
    );
  }
}

*/

/*import 'package:flutter/cupertino.dart';

class FlutterTest extends StatelessWidget{
  class FlutterTest ({super.key});
} */