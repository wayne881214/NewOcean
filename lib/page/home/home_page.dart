import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/page/sign_in_up/authentication_service.dart';
import 'package:provider/provider.dart';
import '../../firebase/log_service.dart';
import '../../model/achievements_model/achievement_model.dart';
import '../../model/achievements_model/logs_model.dart';
import '../../widget/achievements/loglist_view.dart';
import '../../widget/navigation_drawer_widget.dart';
import '../achievements/achievements_page.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('1', style: TextStyle(color: Colors.teal)),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: ImageIcon(
                new AssetImage('assets/icons/hamburger.png'),
                color: Colors.teal
            ),
          );
        },
      ),
      actions: [
        Image.asset('assets/icons/diamond_icon.png',width: 30),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.plus_one),
            color: Colors.teal,
        )
      ],
    ),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/turtle.png'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AchievementsPage(),
                ));
              },
              child: Text('成就連結'),
            ),
            ElevatedButton(
                onPressed: () {
                  Achievement.initAchievements();
                },
                child: const Text('初始化成就')),
            ElevatedButton(
                onPressed: () {
                  updateAchievement();
                },
                child: const Text('手動更新'))
          ],
        ),
      ),
  );
}

