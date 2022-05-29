import 'package:flutter/material.dart';
import 'package:flutterapp/taskapp/generatedtask_page_2widget/GeneratedTask_page_2Widget.dart';
import 'package:flutterapp/taskapp/generatedtask_page_3widget/GeneratedTask_page_3Widget.dart';
import 'package:flutterapp/taskapp/generatedtask_page_1widget/GeneratedTask_page_1Widget.dart';

void main() {
  runApp(taskApp());
}
//剩下任務1 2 3那一頁
//之後路由連接出來整理檔案位置
class taskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedTask_page_1Widget',
      routes: {
        '/GeneratedTask_page_2Widget': (context) =>
            GeneratedTask_page_2Widget(),
        '/GeneratedTask_page_3Widget': (context) =>
            GeneratedTask_page_3Widget(),
        '/GeneratedTask_page_1Widget': (context) =>
            GeneratedTask_page_1Widget(),
      },
    );
  }
}
