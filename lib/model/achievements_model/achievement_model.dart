import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../firebase/log_service.dart';

//https://docs.google.com/spreadsheets/d/1jEmrP6cRIUbXMCrEUXkMKT9-jYJTnig_/edit#gid=482878652

class Achievement {
  final int id;
  final String type;
  final String name;
  final String description;
  final int star;
  final int target;
  int points;
  final List<String> label;
  late final Map<String, Object> api;

  Achievement(this.id, this.type, this.name, this.description, this.star,
       this.target, this.points, this.label);

  static Achievement setAchievement(int id, String type, String name,
      String description, int star,  int points) {
    List<String> labels = [];
    int target = 0;
    switch (name) {
      case "任務高手1":
        labels = ["任務", ""];
        target = 10;
        break;
      case "動物愛好者1":
        labels = ["動物", ""];
        target = 5;
        break;
      case "減塑專家1":
        labels = ["減塑", ""];
        target = 5;
        break;
      case "這遊戲怎麼要一直拍照":
        labels = ["拍照", ""];
        target = 5;
        break;
      default:
        break;
    }
    Achievement resquest = Achievement(
        id, type, name, description, star, target, points, labels);
    createApi(resquest);
    return resquest;
  }

  static void initAchievements() {
    List<Achievement> resquest = [];
    resquest.add(setAchievement(1, "任務", "任務高手1", "完成10次任務", 1,  0));
    resquest.add(setAchievement(2, "任務", "動物愛好者1", "收集2個動物", 1,  0));
    resquest.add(setAchievement(3, "任務", "這遊戲怎麼要一直拍照", "完成5次需要鏡頭的任務", 3, 0));
    resquest.add(setAchievement(4, "任務", "減塑專家1", "完成5次減塑類任務", 2,  0));
    resquest.forEach((item) => addAchievements(item));
  }

  factory Achievement.fromJson(Map<String, dynamic> json) {
    List<String> labels = [];
    json['label'].forEach((item) => labels.add(item));
    return Achievement(
      json['id'],
      json['type'],
      json['name'],
      json['description'],
      json['star'],
      json['target'],
      json['points'],
      labels,
    );
  }
}

void createApi(Achievement achievement) {
  achievement.api = {
    "id": achievement.id,
    "type": achievement.type,
    "name": achievement.name,
    "description": achievement.description,
    "star": achievement.star,
    "target": achievement.target,
    "points": achievement.points,
    "label": achievement.label,
  };
}
