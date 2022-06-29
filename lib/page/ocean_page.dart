import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OceanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('海洋'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    body: Column(
      children: [
        Center(),
      ],
    ),
  );
}
