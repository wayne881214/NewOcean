// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:io';
// import 'package:newocean/model/task_model.dart';

class Task {
  final int id;
  final int state;
  final String imagePath;
  final String title;
  final String mission;
  final int percent;
  // ...
  Task(this.id, this.state, this.imagePath, this.title, this.mission,
      this.percent);

  static Task addTask(int id, int state) {
    switch (id) {
      case 1:
        var Mission = [
          "未解鎖",
          "任務一\n拯救海龜",
          "任務二\n收集寶特瓶(一)",
          "任務三\n收集寶特瓶(二)",
          "已完成"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救海龜大作戰",
            Mission[state], (state * 3 / 100).ceil());
      case 2:
        var Mission = [
          "未解鎖",
          "任務一\n拯救海獅",
          "任務二\n收集垃圾(一)",
          "任務三\n收集垃圾(二)",
          "已完成"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救海獅大作戰",
            Mission[state], (state * 3 / 100).ceil());
      case 4:
        var Mission = ["未解鎖", "任務一\n生成專屬用具", "任務二\n環保用具檢查", "任務三\n環保商店", "已完成"];
        return Task(id, state, "assets/images/turtle.png", "拯救牡蠣大作戰",
            Mission[state], (state * 3 / 100).ceil());

      default:
        return Task(id, state, "assets/images/turtle.png", "尚未解鎖任務", "任務一", 50);
    }
  }
}
