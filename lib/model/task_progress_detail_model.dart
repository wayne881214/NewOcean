import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';

class TaskProgressDetailModel {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;
  int id;
  int state;

  TaskProgressDetailModel(this.iconBorder, this.iconBg, this.iconColor,
      this.icon, this.title, this.desc, this.moduleBorder, this.moduleBg,
      this.buttonColor, this.buttonFont, this.time, this.lesson, this.id,
      this.state);


  static List<TaskProgressDetailModel> generateModules() {
    return [
      //進行中
      TaskProgressDetailModel(kAccent, kAccent, Colors.white, Icons.play_arrow_rounded, '任務 1 拯救海龜', '點擊開始第一項任務，幫助小海龜脫離痛苦。', kPrimaryLight,
          kPrimaryLight, kPrimary, kPrimaryDark, '5 sec', '領取獎勵/分享',1,1),
      //鎖住
      TaskProgressDetailModel(
          kFontLight.withOpacity(0.3), Colors.white, kFontLight.withOpacity(0.7), Icons.lock_outline_rounded, '任務 2 少喝包裝飲料', '常喝手搖飲影響健康，而且用完的吸管被丟入海洋還會危害海洋生物!請維持一週不喝飲料改喝水，健康又環保',
          kPrimaryLight, Colors.white, Colors.grey.withOpacity(0.2), Colors.grey, '3 day', '領取獎勵/分享',1,1),
      TaskProgressDetailModel(
          kFontLight.withOpacity(0.3), Colors.white, kFontLight.withOpacity(0.7), Icons.lock_outline_rounded, '任務 3 使用環保餐具', 'What we didn\'t know\n about catastrophe.',
          kPrimaryLight, Colors.white, Colors.grey.withOpacity(0.2), Colors.grey, '7 day', '領取獎勵/分享',1,1)
    ];
  }
}