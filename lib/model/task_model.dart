//import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
class Task {

  final String name;
  final String imagePath;
  // ...
  Task(this.name,this.imagePath);
  static List<Task> findAll() {
    return [
      Task("1", "nothing"),
      Task("2", "nothing'"),
      Task("2", "nothing'"),
    ];
  }

  static List<Task> findThis() {
    /*DatabaseReference ref = FirebaseDatabase.instance.ref();
    String snapshot =ref.child('users/123').get().toString();
    if (snapshot.exists) {
      print(snapshot.value);
    } else {
      print('No data available.');
    }*/
    return [
      Task("1", "nothing"),
    ];
  }
}