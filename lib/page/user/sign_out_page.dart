import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/page/sign_in_up/authentication_service.dart';
import 'package:provider/provider.dart';
class SignOutPage extends StatefulWidget {
  @override
  State<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登出'),
        centerTitle: true,
        backgroundColor: Color(0xFF00BFA5),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signOut();
                  Navigator.pop(context);
                },
                child: const Text('登出')),
          )
        ],
      ),/*
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signOut();
              Navigator.pop(context);
            },
            child: Text("登出"),
          ),
        ],
      ),*/
    );
  }
}
