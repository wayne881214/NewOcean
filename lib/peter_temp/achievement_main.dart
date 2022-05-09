import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'page/achievement_page.dart';
import 'page/designation_page.dart';
import 'page/personal_page.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  // const MyApp1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyDemo1(),
    );
  }
}

class MyDemo1 extends StatefulWidget {
  // const MyDemo1({Key? key}) : super(key: key);

  @override
  _MyDemo1 createState() => _MyDemo1();
}

class _MyDemo1 extends State<MyDemo1> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '個人頁'),
    Tab(text: '成就頁'),
    Tab(text: '稱號'),
  ];
  int _currentIndex = 0; //預設值
  final pages = [
    YanweiLiu(),
    AccountPage(),
    ChatPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
            onTap: _onItemClick, //BottomNavigationBar 按下處理事件,
          ),
        ),
        body: pages[_currentIndex],
      ),
    );
  }

  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
