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
  final Map reward;
  late final Map<String, Object> api;

  Achievement(this.id, this.type, this.name, this.description, this.star,
       this.target, this.points, this.label, this.reward);
  static Achievement setAchievement(int id) {
    String type="任務";
    String name="";
    String description="";
    int star=0;
    int target = 0;
    int points=0;
    List<String> labels = [];
    Map reward = {'經驗':100,'金錢':200,'道具1':'道具1'};

    // List<String> reward = ["test"];
    switch (id) {
      case 1:
        name= "任務高手";
        description="完成10次任務";
        labels = ["任務", ""];
        target = 10;
        break;
      case 2:
        name= "動物愛好者";
        description="收集2個動物";
        labels = ["動物", ""];
        target = 5;
        break;
      case 3:
        name= "減塑專家";
        description="完成5次減塑類任務";
        labels = ["減塑", ""];
        target = 5;
        break;
      case 4:
        name= "這遊戲怎麼要一直拍照";
        description="完成5次需要鏡頭的任務";
        labels = ["拍照", ""];
        target = 5;
        break;
      case 5:
        name= "簽到老人";
        description="登入10天";
        labels = ["登入", ""];
        target = 10;
        break;
      case 6:
        name= "社交達人";
        description="擁有5個好友";
        labels = ["好友", ""];
        target = 5;
        break;
      default:
        break;
    }
    Achievement resquest = Achievement(
        id, type, name, description, star, target, points, labels,reward);
    createApi(resquest);
    return resquest;
  }

  static void initAchievements() {
    List<Achievement> resquest = [];
    resquest.add(setAchievement(1));
    resquest.add(setAchievement(2));
    resquest.add(setAchievement(3));
    resquest.add(setAchievement(4));
    resquest.add(setAchievement(5));
    resquest.add(setAchievement(6));

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
      {'經驗':100,'金錢':200},
      //輸出先寫死
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
    "reward": achievement.reward,
  };
}
