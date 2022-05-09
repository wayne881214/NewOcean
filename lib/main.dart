import 'package:flutter/material.dart';
import 'package:flutterapp/newoceanapp/generated_widget/Generated_Widget.dart';
import 'package:flutterapp/newoceanapp/generated_widget1/Generated_Widget1.dart';
import 'package:flutterapp/newoceanapp/generated_widget2/Generated_Widget2.dart';

void main() {
  runApp(newoceanApp());
}

class newoceanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/Generated_Widget2',
      routes: {
        '/Generated_Widget': (context) => Generated_Widget(),
        '/Generated_Widget1': (context) => Generated_Widget1(),
        '/Generated_Widget2': (context) => Generated_Widget2(),
      },
    );
  }
}
