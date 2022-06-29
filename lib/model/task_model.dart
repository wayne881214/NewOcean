// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:io';
// import 'package:newocean/model/task_model.dart';

import 'package:firebase_database/firebase_database.dart';

class Task {
  final int id;
  final int state;
  final String imagePath;
  final String title;
  final String mission;
  final int percent;
  final String describe;
  int P = 0;
  // ...
  int taskState = 1;

  Task(this.id, this.state, this.imagePath, this.title, this.mission,
      this.percent, this.describe);

  static Task addTask2(int id, Map stateApi) {
    int state = 0;
    if (stateApi["state"] >= 15) {
      state = 4;
    } else if (stateApi["state"] > 8) {
      state = 3;
    } else if (stateApi["state"] > 1) {
      state = 2;
    } else {
      state = 1;
    }
    switch (id) {
      case 1:
        var Mission = ["未解鎖", "任務一 拯救海龜", "任務二 少喝包裝飲料", "任務三 使用環保餐具", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "點擊開始第一項任務，幫助小海龜脫離痛苦。",
          "常喝手搖飲影響健康，而且用完的吸管被丟入海洋還會危害海洋生物!請維持一週不喝飲料改喝水，健康又環保",
          "What we didn\'t know\n about catastrophe.",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救海龜大作戰",
            Mission[state], stateApi["percent"].ceil(), Describe[state]);
      case 2:
        var Mission = [
          "未解鎖",
          "任務一 拯救海獅任務",
          "任務二 重複使用橡皮圈",
          "任務三 使用環保餐任務",
          "已完成"
        ];
        var Describe = [
          "趕快去解鎖第一個任務",
          "嗚嗚嗚~脖子被勒住好痛！",
          "海洋生物經常被塑膠纏繞\n這將影響海獅活動\n甚至阻礙血液循環，影響生長",
          "綠色生活，拒用免洗餐具\n愛護自己，保護環境\n您我ㄧ筷，健康愉快",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/sea_lion.png", "拯救海獅大作戰",
            Mission[state], stateApi["percent"].ceil(), Describe[state]);
      case 3:
        var Mission = [
          "未解鎖",
          "任務一 幫助小鯨魚回家",
          "任務二 減碳行動(一)",
          "任務三 減碳行動(二)",
          "已完成"
        ];
        var Describe = [
          "趕快去解鎖第一個任務",
          "船舶噪音會干擾鯨魚聲納系統\n使其無法找到方向",
          "噪音的傳遞跟海水酸度正相關\n減碳能有效降低海洋酸化",
          "減碳需要持之以恆\n請繼續維持減碳行為一週",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救鯨魚大作戰",
            Mission[state], stateApi["percent"].ceil(), Describe[state]);
      case 4:
        var Mission = ["未解鎖", "任務一 生成專屬用具", "任務二 環保用具檢查", "任務三 環保商店", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "請將生成的QRcod貼到環保餐具\n以利完成每日紀錄任務",
          "請在戶外掃描環保水壺QRcode\n 用一次能減少約500g碳足跡",
          "請到與本APP合作之無包裝商店\n並掃描店面之QRcode",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救牡蠣大作戰",
            Mission[state], stateApi["percent"].ceil(), Describe[state]);
      default:
        return Task(
            id, state, "assets/images/turtle.png", "尚未解鎖任務", "任務一", 50, "你知道");
    }
  }

  static Task addTask(int id, int state) {
    int Perc = 0;
    switch (state) {
      case 0:
      case 1:
        Perc = 0;
        break;
      case 2:
        Perc = 33;
        break;
      case 3:
        Perc = 66;
        break;
      case 4:
        Perc = 100;
        break;
      default:
        Perc = 100;
        break;
    }
    switch (id) {
      case 1:
        var Mission = ["未解鎖", "任務一 拯救海龜", "任務二 少喝包裝飲料", "任務三 使用環保餐具", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "點擊開始第一項任務，幫助小海龜脫離痛苦。",
          "常喝手搖飲不僅危害健康，而且用完的吸管被丟入海洋還會危害海洋生物!請維持3天不喝飲料改喝水，健康又環保!",
          "現在把「餐具、環保杯、購物袋」放進包包，並邀請一位好友一起維持7天使用環保餐具，健康又環保!",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救海龜大作戰",
            Mission[state], Perc, Describe[state]);
      case 2:
        var Mission = [
          "未解鎖",
          "任務一 拯救海獅任務",
          "任務二 重複使用橡皮圈",
          "任務三 使用環保餐任務",
          "已完成"
        ];
        var Describe = [
          "趕快去解鎖第一個任務",
          "點擊開始第一項任務，拯救被魚網纏繞而無法動彈的可憐海獅。",
          "塑膠橡皮筋，請勿隨意丟棄最好能重複使用，若丟入海洋很可能造成生物纏繞致死，請重複使用橡皮筋3次。",
          "透過重複使用，替換原本可能會消耗的一次性用品，進而達到減少廢棄物，請在出門採購時自備環保餐盒7次。",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/sea_lion.png", "拯救海獅大作戰",
            Mission[state], Perc, Describe[state]);
      case 3:
        var Mission = [
          "未解鎖",
          "任務一 幫助小鯨魚回家",
          "任務二 減碳行動(一)",
          "任務三 減碳行動(二)",
          "已完成"
        ];
        var Describe = [
          "趕快去解鎖第一個任務",
          "船舶噪音會干擾鯨魚聲納系統\n使其無法找到方向",
          "噪音的傳遞跟海水酸度正相關\n減碳能有效降低海洋酸化",
          "減碳需要持之以恆\n請繼續維持減碳行為一週",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救鯨魚大作戰",
            Mission[state], Perc, Describe[state]);
      case 4:
        var Mission = ["未解鎖", "任務一 生成專屬用具", "任務二 環保用具檢查", "任務三 環保商店", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "請將生成的QRcod貼到環保餐具\n以利完成每日紀錄任務",
          "請在戶外掃描環保水壺QRcode\n 用一次能減少約500g碳足跡",
          "請到與本APP合作之無包裝商店\n並掃描店面之QRcode",
          "恭喜完成所有任務"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救牡蠣大作戰",
            Mission[state], Perc, Describe[state]);
      default:
        return Task(
            id, state, "assets/images/turtle.png", "尚未解鎖任務", "任務一", 50, "你知道");
    }
  }
}
