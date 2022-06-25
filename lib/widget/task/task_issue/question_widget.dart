import 'package:flutter/material.dart';
import 'package:get/utils.dart';
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
      child: Text('題目 ${indexAction + 1}/$totalQuestions:\n$question',
      style: const TextStyle(
        fontSize: 24.0,
        color: kFont,
      ),),
    );
  }

}