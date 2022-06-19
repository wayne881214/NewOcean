import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  CategoryTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText, style: TextStyle(fontSize: 16, color: kFont)),
          Text(rightText, style: TextStyle(fontSize: 16, color: Colors.teal))
        ],
      )
    );
  }
}