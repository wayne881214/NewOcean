
class Task {
  final int id;
  final int state;
  final String imagePath;
  final String title;
  final String mission;
  final int percent;
  final int recode;
  final String describe;


  Task(this.id,this.state,this.imagePath,this.title,this.mission,this.percent,this.recode,this.describe);

  static Task addTask2(int id,int state,Map stateApi) {
    switch (id) {
      case 1:
        var Mission= ["未解鎖", "任務一 拯救海龜","任務二 少喝包裝飲料","任務三 使用環保餐具","已完成"];
        var Describe=
          ["趕快去解鎖第一個任務",
           "點擊開始第一項任務，幫助小海龜脫離痛苦。",
           "常喝手搖飲影響健康，而且用完的吸管被丟入海洋還會危害海洋生物!請維持一週不喝飲料改喝水，健康又環保",
           "What we didn\'t know\n about catastrophe.",
           "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/turtle.png", "拯救海龜大作戰",
                Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
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

          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/sealion.png", "拯救海獅大作戰",
                Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
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

          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/whale.png", "拯救鯨魚大作戰",
            Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
      case 4:
        var Mission = ["未解鎖", "任務一 生成專屬用具", "任務二 環保用具檢查", "任務三 環保商店", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "請將生成的QRcod貼到環保餐具\n以利完成每日紀錄任務",
          "請在戶外掃描環保水壺QRcode\n 用一次能減少約500g碳足跡",
          "請到與本APP合作之無包裝商店\n並掃描店面之QRcode",

          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/ostrica.png", "拯救牡蠣大作戰",
            Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
      case 5:
        var Mission = ["未解鎖", "任務一 標記環保商店", "任務二 標記垃圾桶", "任務三 垃圾桶打卡", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "標記環保商店",
          "標記垃圾桶",
          "垃圾桶打卡",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/jellyfish.png", "拯救水母大作戰",
            Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
      case 6:
        var Mission = ["未解鎖", "任務一 標記環保商店", "任務二 標記垃圾桶", "任務三 垃圾桶打卡", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "標記環保商店",
          "標記垃圾桶",
          "垃圾桶打卡",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/hippocampus.png", "海馬大作戰",
            Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
      case 7:
        var Mission = ["未解鎖", "任務一 擺脫塑膠袋", "任務二 重複使用環保袋<一>", "任務三 重複使用環保袋<二>", "已完成"];
        var Describe = [
          "趕快去解鎖第一個任務",
          "珊瑚礁被海洋塑膠袋套住了",
          "重複使用環保袋<一>\n",
          "重複使用環保袋<二>\n",
          "恭喜完成所有任務"];
        return Task(id,state,"assets/images/animals/coral.png", "珊瑚大作戰",
            Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
      // case 8:
      //   var Mission = ["未解鎖", "任務一 標記環保商店", "任務二 標記垃圾桶", "任務三 垃圾桶打卡", "已完成"];
      //   var Describe = [
      //     "趕快去解鎖第一個任務",
      //     "標記環保商店",
      //     "標記垃圾桶",
      //     "垃圾桶打卡",
      //     "恭喜完成所有任務"];
      //   return Task(id,state,"assets/images/animals/coral.png", "珊瑚大作戰",
      //       Mission[state],stateApi["percent"].ceil(),stateApi["state"],Describe[state]);
      default:
        return Task(id,state,"assets/images/animals/lock.png", "尚未開放任務","未解鎖",0,stateApi["state"],"敬請期待");
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
        var Mission = ["未解鎖", "Task 1. 使用環保杯", "Task 2. 少用一次性餐具", "Task 3. 少用一次性餐具", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "點擊開始任務，拯救被塑膠垃圾危害的可憐海龜!",
          "常喝手搖飲不僅危害健康，而且用完的吸管被丟入海洋還會危害海洋生物!",
          "現在把「餐具、環保杯、購物袋」放進包包，並邀請一位好友一起使用環保餐具!",
          "恭喜完成所有任務!"
        ];
        return Task(id, state, "assets/images/turtle.png", "拯救海龜大作戰",
            Mission[state], Perc, 1,Describe[state]);

      case 2:
        var Mission = ["未解鎖", "Task 1. 幫海獅掙脫漁網", "Task 2. 綠色消費任務", "Task 3. 綠色消費任務", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "點擊開始任務，拯救被魚網纏繞而無法動彈的可憐海獅!",
          "在購物時自備環保購物袋，不僅可以少付1塊，還可以拯救一隻海洋動物受塑膠袋纏繞窒息!",
          "在購物時選擇非精緻包裝產品，也可以減少海洋中的塑膠垃圾喔!",
          "恭喜完成所有任務!"
        ];
        return Task(id, state, "assets/images/sea_lion.png", "拯救海獅大作戰",
            Mission[state], Perc, 1,Describe[state]);

      case 3:
        var Mission = ["未解鎖", "Task 1. 幫助小鯨魚回家", "Task 2. 聲納偵測任務", "Task 3. GPS倒垃圾", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "船舶噪音會干擾鯨魚的聲納系統，使鯨魚無法找到回家的方向",
          "噪音的傳遞跟海水酸度正相關，減碳能有效降低海洋酸化",
          "減碳需要持之以恆，請繼續維持減碳行為一週",
          "恭喜完成所有任務!"];
        return Task(id,state,"assets/images/animals/whale.png", "拯救鯨魚大作戰",
                Mission[state],Perc,1,Describe[state]);
      case 4:
        var Mission = ["未解鎖", "Task 1. 生成專屬用具", "Task 2. 環保用具檢查", "Task 3. 環保商店", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "請將生成的QRcod貼到環保餐具，以利完成每日紀錄任務",
          "請在戶外掃描環保水壺QRcode，用一次能減少約500g碳排放量",
          "請到與本APP合作之無包裝商店，並掃描店面之QRcode",
          "恭喜完成所有任務!"];
        return Task(id,state,"assets/images/animals/ostrica.png", "拯救牡蠣大作戰",
                Mission[state],Perc,1,Describe[state]);
      case 5:
        var Mission = ["未解鎖", "Task 1. 標記環保地區", "Task 2. 環保商店打卡", "Task 3. 環保地區打卡", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "社區中很多環保地標，像推廣無塑的環保商店或是簡單的垃圾桶，一起填補地標資訊吧!",
          "一起到環保商店消費，鼓勵無塑產品的購買吧!",
          "利用New Ocean找出地圖上標記的環保地標，實地參訪吧!",
          "恭喜完成所有任務!"];
        return Task(id,state,"assets/images/animals/jellyfish.png", "拯救水母大作戰",
            Mission[state],Perc,1,Describe[state]);

      case 6:
        var Mission = ["未解鎖", "Task 1. 垃圾分類", "Task 2. 隨手撿垃圾", "Task 3. 可回收塑膠七大類", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "點擊開始第一項任務，幫小海馬撿到的垃圾分類!",
          "身為垃圾製造者的人類，是不是應該隨手撿垃圾丟到垃圾桶內，請隨手撿垃圾回收後記錄三次!",
          "資源回收很重要，但錯誤的分類會讓辛苦回收再利用的塑膠廢料報銷，你知道塑膠也有分種類嗎?",
          "恭喜完成所有任務!"];
        return Task(id,state,"assets/images/animals/hippocampus.png", "海馬大作戰",
            Mission[state],Perc,1,Describe[state]);
      case 7:
        var Mission = ["未解鎖", "Task 1. 擺脫塑膠袋", "Task 2. 天然橘皮洗潔劑", "Task 3. 天然菜瓜布", "已完成"];
        var Describe = [
          "趕快去解鎖任務吧!",
          "點擊開始任務，幫助被塑膠袋套住的珊瑚礁!",
          "家庭、工業與農業廢水，被排放流入大海後，會改變海洋酸鹼值，甚至可能造成珊瑚白化!",
          "擁有最天然得橘皮洗潔劑，但沒有最天然的菜瓜布怎麼行，一起動手做吧!",
          "恭喜完成所有任務!"];
        return Task(id,state,"assets/images/animals/coral.png", "珊瑚大作戰",
            Mission[state],Perc,1,Describe[state]);

      /*case 8:
        var Mission = ["未解鎖", "Task 1. 出現錯誤", "Task 2. 出現錯誤", "Task 3. 出現錯誤", "出現錯誤"];
        var Describe = [
          "出現錯誤",
          "出現錯誤",
          "出現錯誤",
          "出現錯誤",
          "出現錯誤"];
        return Task(id,state,"assets/images/animals/ostrica.png", "出現錯誤 請忽視",
            Mission[state],Perc,1,Describe[state]);*/
      default:
        return Task(id,state,"assets/images/animals/lock.png", "尚未開放任務","未解鎖",0,1,"敬請期待");
    }
  }
}
