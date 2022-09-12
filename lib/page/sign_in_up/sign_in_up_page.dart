import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authentication_service.dart';

class SignInUpPage extends StatelessWidget {
  final database = FirebaseDatabase.instance.reference();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("users");

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('assets/images/logo.png'),
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
                    var name = nameController.text.trim();
                    var email = emailController.text.trim();
                    var password = passwordController.text.trim();
                    try {
                      FirebaseAuth auth = FirebaseAuth.instance;
                      UserCredential userCredential =
                      await auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      if (userCredential.user != null) {
                        DatabaseReference userRef = FirebaseDatabase.instance.reference().child('Users/');
                        String uid = userCredential.user!.uid;
                        await userRef.child(uid).set({
                          'name': name,
                          'email': email,
                          'uid': uid,
                          'ststus': 'Unavalible',
                          'profileImage': ''
                        });
                        DatabaseReference taskRef = FirebaseDatabase.instance.reference().child('Tasks/').child(uid);
                        for (int i = 1; i < 5; i++)
                          await taskRef.child('task$i').set(
                              {
                                'state': 0,
                                'id': i,
                              }
                          );
                        users.add({
                          'name': name,
                          'email': email,
                          'uid': uid,
                          'ststus': 'Unavalible',
                        }
                        );
                        print('success');
                      }
                    } catch (e) {
                      print('error $e');
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