import 'package:flutter/material.dart';


class OceanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('海洋'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body: Column(
      children: [
        Center(
            child: Text('HomePage'),
          ),
      ],
    ),
  );
}
