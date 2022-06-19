import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class EmojiText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(children: [
            TextSpan(text: '📌', style: TextStyle(fontSize: 20)),
            TextSpan(
              text: '環境議題',

              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont
              )
            )
          ]),
      ),
    );
  }
}