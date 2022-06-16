import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:newocean/model/task_model.dart';
class Task {

  final String name;
  final String imagePath;
  // ...
  Task(this.name,this.imagePath);

  static Task addTask(int i) {
    switch(i) {
      case 1:
        return Task("1", "hungry");
      case 2:
        return Task("1", "Yummy");
      default:
        return Task("1", "nothing");
    }
  }

}