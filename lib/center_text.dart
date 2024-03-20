import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.red,
        fontSize: 28,
      ),
    );
  }
}
