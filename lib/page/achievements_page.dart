import 'package:flutter/material.dart';

import '../widget/fitness_app/fitness_app_home_screen.dart';

class AchievementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Achievements'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body:
      MyApp2(),
  );
}
