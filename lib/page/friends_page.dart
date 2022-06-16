import 'package:flutter/material.dart';
import 'package:newocean/screen/shake.dart';

import '../screen/peter_animal.dart';
import '../screen/peter_task.dart';
class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Friends'),
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
                    new MaterialPageRoute(builder: (context) => new shake()),
                  );
                },
                child: Text('shake'),

              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new peter_taskDebug()),
                  );
                },
                child: Text('測試任務ui'),
              ),
            ), Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new peter_animalDebug()),
                  );
                },
                child: Text('測試動物ui'),
              ),
            ),
          ],
        ),
      );
}
