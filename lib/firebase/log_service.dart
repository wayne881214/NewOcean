import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/achievements_model/achievement_model.dart';
import '../model/achievements_model/logs_model.dart';

void addLog(Log Data) {
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref = FirebaseDatabase.instance.ref('Logs/' +
      currentUser +
      '/' +
      formatDate(
          DateTime.now(), [yyyy, "-", mm, "-", dd, " ", HH, ":", nn, ":", ss]));
  show("資料已送出");
  Ref.set(Data.api).whenComplete(() {}).catchError((error) {
    print(error);
  });
}

void addAchievements(Achievement Data) {
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref = FirebaseDatabase.instance
      .ref('Achievements/' + currentUser + '/' + Data.name);
  Ref.set(Data.api).whenComplete(() {}).catchError((error) {
    print(error);
  });
}

List jsonResponse1 = [];
int op1 = 0;

List<Achievement> getAllAchievement() {
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref =
      FirebaseDatabase.instance.ref('Achievements/' + currentUser);
  if (op1 == 0) {
    Ref.onChildAdded.listen((event) async {
      op1 = 1;
      Map userLogValue = (event.snapshot.value as Map);
      jsonResponse1.add(new Map<String, dynamic>.from(userLogValue));
      // print('$jsonResponse1');
    });
  }
  return jsonResponse1
      .map((achievement) => new Achievement.fromJson(achievement))
      .toList();
}

List jsonResponse2 = [];
int op2 = 0;

List<Log> getAllLog() {
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref = FirebaseDatabase.instance.ref('Logs/' + currentUser);
  if (op2 == 0) {
    Ref.onChildAdded.listen((event) async {
      op2 = 1;
      Map userLogValue = (event.snapshot.value as Map);
      jsonResponse2.add(new Map<String, dynamic>.from(userLogValue));
    });
  }
  return jsonResponse2.map((log) => new Log.fromJson(log)).toList();
}

void updateAchievement() {
  List<Achievement> allAchievement = getAllAchievement();
  List<Log> allLog = getAllLog();
  // allLog.forEach((item) => print("item" +item.carbon));
  List<Achievement> resquest = [];
  allAchievement.forEach((achievement) {
    int points = 0;
    allLog.forEach((log) {
      int botton = 0;
      log.label.forEach((label) {
        if (label == achievement.label[0]) {
          botton++;
        }
      });
      if (botton > 0) {
        points++;
      }
    });
    achievement.points = points;
    createApi(achievement);
    resquest.add(achievement);
  });
  resquest.forEach((item) => addAchievements(item));
}

void show(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Color(0xffB3E7E7),
      textColor: Colors.black,
      fontSize: 16.0);
}


void pushTaskLog(int id,int state) {
  Log resquestLog = Log.addTaskLog(id,state);
  addLog(resquestLog);
}

void pushOtherLog(int id) {
  Log resquestLog = Log.addOtherLog(id);
  addLog(resquestLog);
}