import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screen/sign_in_up/authentication_service.dart';
import '../widget/navigation_drawer_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('首頁'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/turtle.png'),
            RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("登出"),
            ),
          ],
        ),
      ),
  );
}

