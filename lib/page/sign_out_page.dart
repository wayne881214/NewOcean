import 'package:flutter/material.dart';
import 'package:newocean/screen/auth/auth.dart';
import 'package:provider/provider.dart';

import '../screen/auth/authentication_service.dart';

class SignOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('登出'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AuthScreen()));
              },
              child: Text("登出"),
            ),
          ],
        ),
      ),
  );
}

