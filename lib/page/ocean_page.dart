import 'package:flutter/material.dart';

import '../task_turtle_package/screens/task_turtle_home/home.dart';


class OceanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('海洋(鼎軒)'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body: Column(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new HomePage()),
              );
            },
            child: Text('HomePage'),
          ),
        ),
      ],
    ),
  );
}
