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
    switch (id) {
      case 1:
        var Mission= ["未解鎖", "任務一 拯救海龜任務","任務二 少喝飲料任務","任務三 使用環保餐任務","已完成"];
        var Describe=
          ["趕快去解鎖第一個任務",
           "嗚嗚嗚~鼻孔有異物好痛！",
           "海龜主要食物為水母\n但因無法分辨水母和塑膠\n而經常誤食塑膠袋與吸管\n嚴重阻塞其消化系統",
           "多喝水少喝飲料\n對你我健康\n對地球進一份心力",
           "恭喜完成所有任務"];
        return Task(id,state,"assets/images/turtle.png", "拯救海龜大作戰",
                Mission[state],((state-1)*100/3).ceil(),Describe[state]);
      case 2:
        var Mission= ["未解鎖", "任務一 拯救海獅任務","任務二 重複使用橡皮圈","任務三 使用環保餐任務","已完成"];
        var Describe= [
          "趕快去解鎖第一個任務",
          "嗚嗚嗚~脖子被勒住好痛！",
          "海洋生物經常被塑膠纏繞\n這將影響海獅活動\n甚至阻礙血液循環，影響生長",
          "綠色生活，拒用免洗餐具\n愛護自己，保護環境\n您我ㄧ筷，健康愉快",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/sea_lion.png", "拯救海獅大作戰",
                Mission[state],((state-1)*100/3).ceil(),Describe[state]);
      case 3:
        var Mission= ["未解鎖", "任務一 幫助小鯨魚回家","任務二 減碳行動(一)","任務三 減碳行動(二)","已完成"];
        var Describe=
         ["趕快去解鎖第一個任務",
          "船舶噪音會干擾鯨魚聲納系統\n使其無法找到方向",
          "噪音的傳遞跟海水酸度正相關\n減碳能有效降低海洋酸化",
          "減碳需要持之以恆\n請繼續維持減碳行為一週",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/turtle.png", "拯救鯨魚大作戰",
                Mission[state],((state-1)*100/3).ceil(),Describe[state]);
      case 4:
        var Mission = ["未解鎖", "任務一 生成專屬用具", "任務二 環保用具檢查", "任務三 環保商店", "已完成"];
        var Describe=
         ["趕快去解鎖第一個任務",
          "船舶噪音會干擾鯨魚聲納系統\n使其無法找到方向",
          "噪音的傳遞跟海水酸度正相關\n減碳能有效降低海洋酸化",
          "減碳需要持之以恆\n請繼續維持減碳行為一週",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/turtle.png", "拯救鯨魚大作戰",
                Mission[state],((state-1)*100/3).ceil(),Describe[state]);          
      default:
        return Task(id,state,"assets/images/turtle.png", "尚未解鎖任務","任務一",50,"你知道");
    }
  }
}
