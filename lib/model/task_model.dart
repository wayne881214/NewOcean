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
  final String describe;
  // ...

  Task(this.id,this.state,this.imagePath,this.title,this.mission,this.percent,this.describe);

  static Task addTask(int id, int state) {
    int Perc=0;
    switch(state){
      case 0:
      case 1:
          Perc=0;
          break;
      case 2:
        Perc=33;
        break;
      case 3:
        Perc=66;
        break;
      case 4:
        Perc=100;
        break;
      default:
        Perc=100;
        break;
    }
    switch (id) {
      case 1:
        var Mission= ["未解鎖", "任務一 拯救海龜任務","任務二 少喝飲料任務","任務三 使用環保餐任務","已完成"];
        var Describe= ["趕快去解鎖第一個任務", "海龜很累","海龜很累","海龜很累","恭喜完成所有任務"];
            return Task(id,state,"assets/images/turtle.png", "拯救海龜大作戰",
                Mission[state],Perc,Describe[state]);
      case 2:
        var Mission= ["未解鎖", "任務一 拯救海獅","任務二 收集垃圾(一)","任務三 收集垃圾(二)","已完成"];
        var Describe= ["趕快去解鎖第一個任務", "海獅很累","海獅很累","海獅很累","恭喜完成所有任務"];
            return Task(id,state,"assets/images/turtle.png", "拯救海獅大作戰",
                Mission[state],Perc,Describe[state]);
      case 3:
        var Mission= ["未解鎖", "任務一 幫助小鯨魚回家","任務二 減碳行動(一)","任務三 減碳行動(二)","已完成"];
        var Describe=
         ["趕快去解鎖第一個任務",
          "船舶噪音會干擾鯨魚聲納系統\n使其無法找到方向",
          "噪音的傳遞跟海水酸度正相關\n減碳能有效降低海洋酸化",
          "減碳需要持之以恆\n請繼續維持減碳行為一週",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/turtle.png", "拯救鯨魚大作戰",
                Mission[state],Perc,Describe[state]);
      case 4:
        var Mission = ["未解鎖", "任務一 生成專屬用具", "任務二 環保用具檢查", "任務三 環保商店", "已完成"];
        var Describe=
         ["趕快去解鎖第一個任務",
          "船舶噪音會干擾鯨魚聲納系統\n使其無法找到方向",
          "噪音的傳遞跟海水酸度正相關\n減碳能有效降低海洋酸化",
          "減碳需要持之以恆\n請繼續維持減碳行為一週",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/turtle.png", "拯救鯨魚大作戰",
                Mission[state],Perc,Describe[state]);
      default:
        return Task(id,state,"assets/images/turtle.png", "尚未解鎖任務","任務一",50,"你知道");
    }
  }
}
