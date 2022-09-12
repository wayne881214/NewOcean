import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/model/task_model/task_model.dart';

final database = FirebaseDatabase.instance.reference();
final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
int progress_detail_state = 0;

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


  static List<TaskProgressDetailModel> generateModules(int id) {
    Task task1= Task.addTask(id,1);
    Task task2= Task.addTask(id,2);
    Task task3= Task.addTask(id,3);

    database.child('Tasks/$currentUser/task$id').onValue.listen((event) {
      int task_state = (event.snapshot.value as Map)["state"];
      progress_detail_state = task_state;
    });

    if(progress_detail_state == 1){
      return [
        //進行中
        TaskProgressDetailModel(kAccent1, kAccent1, Colors.white, Icons.play_arrow_rounded,task1.mission, task1.describe, kAccent1,
            kPrimaryLight, kPrimary, kPrimaryDark, '5 sec', '領取獎勵/分享',id,1),
        //鎖住
        TaskProgressDetailModel(
            kFontLight.withOpacity(0.3), Colors.white, kFontLight.withOpacity(0.7), Icons.lock_outline_rounded, task2.mission, task2.describe,
            kPrimaryLight, Colors.white, Colors.grey.withOpacity(0.2), Colors.grey, '3 day', '領取獎勵/分享',id,2),
        TaskProgressDetailModel(
            kFontLight.withOpacity(0.3), Colors.white, kFontLight.withOpacity(0.7), Icons.lock_outline_rounded, task3.mission, task3.describe,
            kPrimaryLight, Colors.white, Colors.grey.withOpacity(0.2), Colors.grey, '7 day', '領取獎勵/分享',id,3)
      ];
    } else if(progress_detail_state == 2){
      return[
        //進行中
        TaskProgressDetailModel(
            kAccent1, kAccent1, Colors.white, Icons.play_arrow_rounded,task2.mission, task2.describe, kAccent1,
            kPrimaryLight, kPrimary, kPrimaryDark, '3 day', '領取獎勵/分享',id,2),
        //鎖住
        TaskProgressDetailModel(
            kFontLight.withOpacity(0.3), Colors.white, kFontLight.withOpacity(0.7), Icons.lock_outline_rounded, task3.mission, task3.describe,
            kPrimaryLight, Colors.white, Colors.grey.withOpacity(0.2), Colors.grey, '7 day', '領取獎勵/分享',id,3),
        //完成
        TaskProgressDetailModel(kAccent, kAccent, Colors.white, Icons.check,task1.mission, task1.describe, kPrimaryLight,
            kPrimaryLight, kPrimary, kPrimaryDark, '5 sec', '領取獎勵/分享',id,1),
      ];
    } else if(progress_detail_state == 3){
      return[
        //進行中
        TaskProgressDetailModel(
            kAccent1, kAccent1, Colors.white, Icons.play_arrow_rounded,task3.mission, task3.describe, kAccent1,
            kPrimaryLight, kPrimary, kPrimaryDark, '3 day', '領取獎勵/分享',id,3),
        //完成
        TaskProgressDetailModel(kAccent, kAccent, Colors.white, Icons.check,task1.mission, task1.describe, kPrimaryLight,
            kPrimaryLight, kPrimary, kPrimaryDark, '5 sec', '領取獎勵/分享',id,1),
        TaskProgressDetailModel(
            kAccent, kAccent, Colors.white, Icons.check,task2.mission, task2.describe, kPrimaryLight,
            kPrimaryLight, kPrimary, kPrimaryDark, '3 day', '領取獎勵/分享',id,2),
      ];
    } else {
      return[
        //完成
        TaskProgressDetailModel(kAccent, kAccent, Colors.white, Icons.check,task1.mission, task1.describe, kPrimaryLight,
            kPrimaryLight, kPrimary, kPrimaryDark, '5 sec', '領取獎勵/分享',id,1),
        TaskProgressDetailModel(
            kAccent, kAccent, Colors.white, Icons.check,task2.mission, task2.describe, kPrimaryLight,
            kPrimaryLight, kPrimary, kPrimaryDark, '3 day', '領取獎勵/分享',id,2),
        TaskProgressDetailModel(
            kAccent, kAccent, Colors.white, Icons.check,task3.mission, task3.describe, kPrimaryLight,
            kPrimaryLight, kPrimary, kPrimaryDark, '3 day', '領取獎勵/分享',id,3),
      ];
    }

  }
}