import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:newocean/model/task_model.dart';
class Task {
  final String imagePath;
  final String title;
  final String mission;
  final int percent;
  // ...
  Task(this.imagePath,this.title,this.mission,this.percent);

  static Task addTask(int i) {
    switch(i) {
      case 1:
        return Task("assets/images/turtle.png", "拯救海龜大作戰","任務一",50);
      case 2:
        return Task("assets/images/turtle.png", "拯救海獅大作戰","任務一",50);
      case 3:
        return Task("assets/images/turtle.png", "拯救海豚大作戰","任務一",50);
      default:
        return Task("assets/images/turtle.png", "尚未解鎖任務","任務一",50);
    }
  }

}