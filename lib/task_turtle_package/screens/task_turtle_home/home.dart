import 'package:flutter/material.dart';

import 'package:newocean/task_turtle_package/screens/home/widget/active_course.dart';
import 'package:newocean/task_turtle_package/screens/home/widget/emoji_text.dart';
import 'package:newocean/task_turtle_package/screens/home/widget/issue_text.dart';
import '../../constants/colors.dart';
import 'package:newocean/task_turtle_package/screens/home/widget/feature_course.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('海龜任務'),
        centerTitle: true,
        backgroundColor: Color(0xFF00BFA5),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            IssueText('海洋生物學家在哥斯大黎加發現一隻海龜的鼻孔裡卡了一小節吸管。經過一番掙扎，用鉗子拔出來之後，發現吸管長達 15 公分。這麼長的吸管從鼻孔插入、嵌在呼吸道組織也不知道有多久了。\n', 'view all'),
            FeatureCourse(),
            ActiveCourse(),
            ActiveCourse(),
            ActiveCourse()
        ],),
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
          label: 'home',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              border:
                Border(bottom: BorderSide(color: kAccent, width: 2))),
            child: Text('Home', style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ),
        BottomNavigationBarItem(
          label: 'calenser',
          icon: Image.asset('assets/icons/bell.png', width: 20)),
        BottomNavigationBarItem(
          label: 'calenser',
          icon: Image.asset('assets/icons/bell.png', width: 20)),
        BottomNavigationBarItem(
          label: 'calenser',
          icon: Image.asset('assets/icons/bell.png', width: 20)),
      ],
    );
  }

  /*AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
            'Issue',
            style: TextStyle(fontSize: 16, color: kFontLight),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
              child: Image.asset(
                'assets/icons/bell.png',
                width: 30,
              ),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: kAccent,
                    shape: BoxShape.circle
                  ),
                ))
          ],
        )
      ],
    );
  }*/
}