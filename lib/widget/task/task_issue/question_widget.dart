import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {Key? key,
        required this.question,
        required this.totalQuestions,
        required this.indexAction}) : super(key: key);

  final String question;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('題目 ${indexAction + 1}/$totalQuestions:',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: kFont,
            ),),
            Text('$question',
              style: const TextStyle(
                fontSize: 18.0,
                color: kFont,
              ),),
          ],
        ),
      ),
    );
  }

}