import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/page/achievements/screen/achievements_screen.dart';
import 'package:newocean/page/achievements/screen/friend_show.dart';

import '../../constants/colors.dart';
import '../../constants/achievements_theme.dart';
import '../../model/achievements_model/achievement_model.dart';
import 'screen/my_diary_screen.dart';


class AchievementsPage extends StatefulWidget {
  @override
  _AchievementsPage createState() => _AchievementsPage();
}

class _AchievementsPage extends State<AchievementsPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  Widget screen = Container(
    color: achievementTheme.background,
  );
  int index = 1;
  List<Widget> page=[];
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    late DateTime today= DateTime.now();
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    page = [MyDiaryScreen(animationController: animationController,currentUser:currentUser,today:today), AchievementsList(),  PeopleShow()];
    screen = page[index];
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('成就'),
        centerTitle: true,
        backgroundColor: Color(0xFF00BFA5),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          return Stack(
            children: <Widget>[
              screen,
              // tabBody,
            ],
          );
        },
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),
    );
  }
  BottomNavigationBar _buildBottomNaigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text(
                '本日數據',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text(
                '成就列表',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text(
                '查看他人',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
      ],
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  void _onItemTapped(int index) {
    screen = page[index];
    // print("onItemTapped $index");
    setState(() {
      screen = page[index];
    });
  }

}

