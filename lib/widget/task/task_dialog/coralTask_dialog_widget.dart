
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/firebase/User.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sensors/sensors.dart';
import 'package:newocean/firebase/storage_service.dart';
import '../../../constants/colors.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';


class coralTask1showDialog extends StatefulWidget {
  @override
  _ShakeshowDialog createState() => _ShakeshowDialog();
}

class _ShakeshowDialog extends State<coralTask1showDialog> {
  int number = 0;
  String img = "assets/images/task_carousel_coral_1.png";
  String result = "取消";

  void initState() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      // 摇一摇阀值,不同手机能达到的最大值不同，如某品牌手机只能达到20。
      int value = 15;
      if (event.x >= value ||
          event.x <= -value ||
          event.y >= value ||
          event.y <= -value ||
          event.z >= value ||
          event.z <= -value) {
        if (number < 50) {
          setState(() {
            number += 1;
          });
        }
        if (number == 50) {
          setState(() {
            img =
            "assets/images/animals/coral.png";
            result = "完成任務";
          });
        }
        // if(op==1){
        //   setState(() {
        //     filename=filename;
        //   };
        // }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.all(new Radius.circular(32.0))),
      child: Container(
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: new LinearGradient(colors: <Color>[
              Color(0xffB3E7E7),
              Color(0xffBCCFF5),
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: SizedBox(
                width: 350,
                height: 500,
                child: Center(
                    child: Column(children: [
                      Expanded(
                        flex: 6,
                        child: Image.asset(img, height: 300, width: 250),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("搖晃手機以幫助珊瑚掙脫塑膠袋"),
                      ),
                      Expanded(
                          flex: 2,
                          child: Row(children: [
                            Expanded(
                              flex: 2,
                              child: Image.asset("assets/images/icons/shake.png",
                                  height: 150.00, width: 150.00),
                            ),
                            Expanded(
                                flex: 8,
                                child: LinearPercentIndicator(
                                  width: 250,
                                  animation: true,
                                  lineHeight: 20.0,
                                  animationDuration: 200,
                                  percent: number * 2 / 100,
                                  barRadius: const Radius.circular(16),
                                  progressColor: Color(0XFFFF1C41),
                                ))
                          ])),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            width: 100, // <-- Your width
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _checkAndPush();
                                Navigator.of(context).pop(true);
                              },
                              child: Text('$result'),
                            ),
                          ))
                    ])))),
      ),
    );
  }

  void _pushLog() {
    Log resquestLog = Log.addTaskLog(7, 1);
    addLog(resquestLog);
    changeTask(7, 1);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}

class coralTask2showDialog extends StatefulWidget {
  @override
  _task2showDialog createState() => _task2showDialog();
}

class _task2showDialog extends State<coralTask2showDialog> {
  int number = 0, op = 0;
  String img = "https://coralacademy.com/images/coral.gif";
  String result = "完成任務";
  String filename = "123.jpg";

  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    // print("2.filename:$filename");
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.all(new Radius.circular(32.0))),
      child: Container(
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: new LinearGradient(colors: <Color>[
              Color(0xffB3E7E7),
              Color(0xffBCCFF5),
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: SizedBox(
                width: 350,
                height: 500,
                child: Center(
                    child: Column(children: [
                      Expanded(
                        flex: 9,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(text: '✔STEP 1', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\n準備材料:\n1. 橘子\n2. 酒精\n3. 蘇打粉\n4. 可二次使用容器\n5. 湯匙\n6. 剪刀\n',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kFont,
                                )
                            ),TextSpan(text: '✔STEP 2', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\n吃完橘子後，將橘子皮內層的白色纖維用湯匙刮掉，使用剪刀將橘子皮剪成小碎片，裝入容器中。\n',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kFont,
                                )
                            ),TextSpan(text: '✔STEP 3', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\n到入酒精蓋過橘子皮，加入蘇打粉，蓋上蓋子靜置2-3天，最天然無毒的洗潔劑就完成囉!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kFont,
                                )
                            )
                          ]),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            width: 100, // <-- Your width
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _checkAndPush();
                                Navigator.of(context).pop(true);
                              },
                              child: Text('$result'),
                            ),
                          ))
                    ])))),
      ),
    );
  }

  // void _pushLog(){
  //   Map<String,Object> log= {
  //     "date": formatDate(DateTime.now(), [yyyy, "-", mm, "-", dd, " ",  HH, ":", nn, ":", ss]),
  //     "task": 1,
  //     "carbon": 10,
  //     "id":"1-2"
  //   };
  //   final DatabaseReference fireBaseDB = FirebaseDatabase.instance.ref("User/1/log/");
  //   // DatabaseReference pushUserDB = fireBaseDB.child("4-2-3");
  //
  //
  //   DatabaseReference pushUserDB = fireBaseDB.push();
  //   //push=>亂碼顯示 有空在設4-1-n
  //   pushUserDB.set(log).whenComplete((){
  //     print("user push success");
  //   }).catchError((error){
  //     print(error);
  //   });
  //   changeTask2(1 ,2,API);
  // }

  void _pushLog() {
    Log resquestLog = Log.addTaskLog(7, 2);
    addLog(resquestLog);
    changeTask2(7, 2, API);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}

class coralTask3showDialog extends StatefulWidget {
  @override
  _task3showDialog createState() => _task3showDialog();
}

class _task3showDialog extends State<coralTask3showDialog> {
  int number = 0, op = 0;
  String img = "https://coralacademy.com/images/coral.gif";
  String result = "取消";
  String filename = "123.jpg";

  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    // print("2.filename:$filename");
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.all(new Radius.circular(32.0))),
      child: Container(
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: new LinearGradient(colors: <Color>[
              Color(0xffB3E7E7),
              Color(0xffBCCFF5),
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: SizedBox(
                width: 350,
                height: 500,
                child: Center(
                    child: Column(children: [
                      Expanded(
                        flex: 9,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(text: '✔STEP 1', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\n準備一個老絲瓜，找地方掛起來晒，當表皮由綠色變成枯黃的褐色時，就是做菜瓜布的最佳時機。\n',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kFont,
                                )
                            ),TextSpan(text: '✔STEP 2', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\n將老絲瓜的皮與肉分離，取出絲瓜纖維，用水泡濕並搓揉洗淨，中途會產生滑手的絲瓜水，絲瓜水是護膚化美容聖品，用來洗手護膚很不錯喔! 洗完後輕輕拍打，把絲瓜籽拍出。\n',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kFont,
                                )
                            ),TextSpan(text: '✔STEP 3', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\n完成以上步驟後拿去晒乾，最天然無毒的菜瓜布就大功告成囉!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kFont,
                                )
                            )
                          ]),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            width: 100, // <-- Your width
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _checkAndPush();
                                Navigator.of(context).pop(true);
                              },
                              child: Text('$result'),
                            ),
                          ))
                    ])))),
      ),
    );
  }

  void _pushLog() {
    Log resquestLog = Log.addTaskLog(7, 3);
    addLog(resquestLog);
    changeTask3(7, 3, API);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}
