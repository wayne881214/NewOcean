import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/fitness_app/fitness_app_home_screen.dart';

class AchievementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('成就'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    body:
      MyApp2(),
  );
}
