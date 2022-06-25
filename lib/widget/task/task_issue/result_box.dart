import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,}) : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(padding: const EdgeInsets.all(60.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              '得分',
            style: TextStyle(
              color: kFont, fontSize: 22.0
            ),
          ),
          const SizedBox(height: 20.0),
          CircleAvatar(child: Text('$result/$questionLength',
          style: TextStyle(
            fontSize: 30.0
          ),),
          radius: 70.0,
          backgroundColor: result == questionLength / 2
              ? Colors.yellow
              : result < questionLength / 2
                ? incorrect
                : correct,
          ),
          const SizedBox(height: 20.0),
          Text(result == questionLength / 2
              ? '對一半了'
              : result < questionLength / 2
              ? '再試一次？'
              : '太棒了',
              style: const TextStyle(color: kFont),),
          const SizedBox(height: 25.0),
          GestureDetector(
            onTap: onPressed,
            child: const Text(
              '再一次',
                style: TextStyle(color: Colors.orange, fontSize: 20.0)),
          )
        ],
      ),),
    );
  }
}
