import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/screen/shake.dart';
class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('好友'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Column(
          children: [
            Center(),
          ],
        ),
      );
}
