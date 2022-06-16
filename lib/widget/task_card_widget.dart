import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/model/task_model.dart';
import 'package:newocean/screen/mission.dart';
import 'package:percent_indicator/percent_indicator.dart';
class TaskCard extends StatelessWidget {
  //獲取List<Task>任務列表
  TaskCard({Key? key, required this.data}) : super(key: key);
  final List<Task> data;
  @override
  Widget build(BuildContext context) {
    //生成List項目
    return ListView(
        //每一項進行生成
        children: data.map((value){
          //偵測點擊跳轉(mission介面)
          return GestureDetector(
              onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  //回傳任務ID
                  builder: (context) => mission(id:value.id),
                ));
          },
          //生成Task Card(任務卡片)
          child: Card(
            //陰影
            elevation: 2,
            //外圍距離
            margin: const EdgeInsets.only(top:15 ,left:30,right: 30,bottom: 15),
            //邊框
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xFF8F8F8F),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            //建立盒子
            child: SizedBox(
              //設置大小
                width: 360,
                height: 180,
          child: Center(
              child:Column(
                //垂直分割Row(1:6:2:1)
                children: [
                  //空白
                  const Expanded(
                      flex: 1,
                      child:Text('')
                  ),
                  Expanded(
                      flex: 6,
                      //水平分割(4:6)
                      child: Row(
                          children: [
                            //task_model Image(任務圖片)
                            Expanded(
                                flex: 4,
                                child: Image.asset(value.imagePath, height: 100.00, width: 100.00)
                            ),
                            Expanded(
                                flex: 6,
                                //垂直分割(4:6)
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //task_model Title(任務標題)
                                      Expanded(
                                          flex: 4,
                                          child: Text(
                                            value.title,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 20)
                                          )
                                      ),
                                      //task_model Mission(當前任務描述)
                                      Expanded(
                                          flex: 6,
                                          child: Text(
                                             value.mission,
                                             textAlign: TextAlign.center,
                                             overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(fontSize: 14)
                                          )
                                      )
                                    ]
                                )
                            )
                          ]
                      )
                  ),
                  //task_model Percent(當前任務進度)
                  Expanded(
                      flex: 2,
                      child: LinearPercentIndicator(
                        width: 350,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 200,
                        percent: value.percent / 100,
                        center: Text("${value.percent}%"),
                        barRadius: const Radius.circular(16),
                        progressColor: Color(0xFFECC055),
                      )
                  ),
                  const Expanded(
                      flex: 1,
                      child:Text('')
                  )
                ],
              )
          )
            )
          ));
    }).toList(),
  );
  }
}
/*class TaskCard_Simple extends StatelessWidget {
  TaskCard_Simple({Key? key, required this.data}) : super(key: key);
  final List<Task> data;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: data.map((value) {
        //偵測點擊跳轉(mission介面)
        return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => mission(id: 1),
                  ));
            },
            //生成Task Card(任務卡片)
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFF00BFA5),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(child: Text(value.imagePath)),
              ),
            ));
      }).toList(),
    );
  }
}*/