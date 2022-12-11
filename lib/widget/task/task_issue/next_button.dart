import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.nextQuestion}) : super(key: key);
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: new LinearGradient(colors: <Color>[
            Color(0xffB3E7E7),
            Color(0xffBCCFF5),
          ], begin: Alignment.topLeft, end: Alignment.topRight)
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: const Text(
          '下一題',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}