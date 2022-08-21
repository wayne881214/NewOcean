import 'package:flutter/material.dart';

import 'package:newocean/constants/colors.dart';

class emoji_Title extends StatefulWidget {
  emoji_Title({Key? key, required this.name}) : super(key: key);
  final String name;
  _emoji_Title createState() => _emoji_Title();
}
class _emoji_Title extends State<emoji_Title>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(text: '🌱', style: TextStyle(fontSize: 20)),
          TextSpan(
              text: '${widget.name}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kFont,
              )
          )
        ]),
      ),
    );
  }
}