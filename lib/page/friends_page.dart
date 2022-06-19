import 'package:flutter/material.dart';
import 'package:newocean/screen/shake.dart';
class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('好友'),
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
          ],
        ),
      );
}
