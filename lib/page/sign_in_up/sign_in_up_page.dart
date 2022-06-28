import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'authentication_service.dart';

class SignInUpPage extends StatelessWidget {
  final database = FirebaseDatabase.instance.reference();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final UsersRef = database.child('Users/');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('assets/images/login.jpg'),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: "Name", border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email", border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password", border: OutlineInputBorder()
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: () {
                    context.read<AuthenticationService>().signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  },
                  child: Text("登入"),
                ),
                RaisedButton(
                  onPressed: () async {
                    try {
                      String? key = database.child('Users/').push().key;
                      await UsersRef.child(key!).set({
                        'id': key,
                        'name': nameController.text,
                        'email': emailController.text,
                        'password': passwordController.text,
                      },);
                      print('object');
                    } catch (e) {
                      print('objectsfa $e');
                    }
                    context.read<AuthenticationService>().signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  },
                  child: Text("註冊"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}