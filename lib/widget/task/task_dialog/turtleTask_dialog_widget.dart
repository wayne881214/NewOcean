import 'dart:async';
import 'package:all_sensors/all_sensors.dart' as name;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/firebase/User.dart';
import 'package:newocean/firebase/storage_service.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';

class nothingshowDialog extends StatefulWidget {
  @override
  _nothingDialog createState() => _nothingDialog();
}

class _nothingDialog extends State<nothingshowDialog> {
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('你已經完成任務'),
      content: Text('(解鎖動物互動＿ＡＲ)'),
      actions: <Widget>[
        CupertinoDialogAction(
            child: TextButton(
              child: Text("確定"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ))
      ],
    );
  }
}

class turtleTask1showDialog extends StatefulWidget {
  @override
  _task1showDialog createState() => _task1showDialog();
}
class _task1showDialog extends State<turtleTask1showDialog> {
  bool _proximityValues = false;
  String result = "取消";
  String img = "assets/images/task_carousel_turtle_1.jpg";
  List<StreamSubscription<dynamic>> _streamSubscriptions =
  <StreamSubscription<dynamic>>[];

  void initState() {
    super.initState();
    _streamSubscriptions
        .add(name.proximityEvents!.listen((name.ProximityEvent event) {
      setState(() {
        _proximityValues = event.getValue();
      });
      if (_proximityValues) {
        setState(() {
          img = "assets/images/animals/turtle.png";
          result = "完成任務";
        });
      }
    }));
  }

  @override
  void dispose() {
    super.dispose();
    for (StreamSubscription<dynamic> subscription in _streamSubscriptions) {
      subscription.cancel();
    }
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
                        flex: 8,
                        child: Image.asset( img , height: 350.00, width: 350.00)
                      ),
                      Expanded(
                        flex: 1,

                        child: Text("請將環保水壺靠近手機紀錄"),
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
    Log resquestLog = Log.addTaskLog(3,2);
    addLog(resquestLog);
    changeTask(3,2);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}
// class _ShakeshowDialog extends State<turtleTask1showDialog> {
//   int number = 0;
//   String img = "https://turtleacademy.com/images/turtle.gif";
//   String result = "取消";
//
//   void initState() {
//     accelerometerEvents.listen((AccelerometerEvent event) {
//       // 摇一摇阀值,不同手机能达到的最大值不同，如某品牌手机只能达到20。
//       int value = 15;
//       if (event.x >= value ||
//           event.x <= -value ||
//           event.y >= value ||
//           event.y <= -value ||
//           event.z >= value ||
//           event.z <= -value) {
//         if (number < 10) {
//           setState(() {
//             number += 1;
//           });
//         }
//         if (number == 10) {
//           setState(() {
//             img =
//             "https://memeprod.ap-south-1.linodeobjects.com/user-gif-thumbnail/eb4e861fd45a3a55cd2683ab47231d49.gif";
//             result = "完成任務";
//           });
//         }
//         // if(op==1){
//         //   setState(() {
//         //     filename=filename;
//         //   };
//         // }
//       }
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//           borderRadius: new BorderRadius.all(new Radius.circular(32.0))),
//       child: Container(
//         decoration: new BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(15)),
//             gradient: new LinearGradient(colors: <Color>[
//               Color(0xffB3E7E7),
//               Color(0xffBCCFF5),
//             ], begin: Alignment.topLeft, end: Alignment.topRight)),
//         child: Card(
//             elevation: 0,
//             color: Colors.transparent,
//             child: SizedBox(
//                 width: 350,
//                 height: 500,
//                 child: Center(
//                     child: Column(children: [
//                       Expanded(
//                         flex: 6,
//                         child: Image.network(img, height: 300, width: 250),
//                       ),
//                       Expanded(
//                         flex: 1,
//                         child: Text("搖晃手機以幫助海龜掙脫漁網"),
//                       ),
//                       Expanded(
//                           flex: 2,
//                           child: Row(children: [
//                             Expanded(
//                               flex: 2,
//                               child: Image.asset("assets/images/icons/shake.png",
//                                   height: 150.00, width: 150.00),
//                             ),
//                             Expanded(
//                                 flex: 8,
//                                 child: LinearPercentIndicator(
//                                   width: 250,
//                                   animation: true,
//                                   lineHeight: 20.0,
//                                   animationDuration: 200,
//                                   percent: number * 10 / 100,
//                                   barRadius: const Radius.circular(16),
//                                   progressColor: Color(0XFFFF1C41),
//                                 ))
//                           ])),
//                       Expanded(
//                           flex: 1,
//                           child: Container(
//                             padding: EdgeInsets.all(5.0),
//                             width: 100, // <-- Your width
//                             height: 50,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 _checkAndPush();
//                                 Navigator.of(context).pop(true);
//                               },
//                               child: Text('$result'),
//                             ),
//                           ))
//                     ])))),
//       ),
//     );
//   }
//
//   void _pushLog() {
//     Log resquestLog = Log.addTaskLog(1, 1);
//     addLog(resquestLog);
//     changeTask(1, 1);
//   }
//
//   void _checkAndPush() {
//     if (result == "完成任務") {
//       _pushLog();
//     }
//   }
// }

class turtleTask2showDialog extends StatefulWidget {
  @override
  _task2showDialog createState() => _task2showDialog();
}

class _task2showDialog extends State<turtleTask2showDialog> {
  int number = 0, op = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "取消";
  String filename = "123.jpg";

  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();

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
                        child: FutureBuilder(
                            future: storage.downloadURL('$filename'),

                            // future: storage.listFiles(),
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done &&
                                  snapshot.hasData) {
                                return Container(
                                    width: 300,
                                    height: 250,
                                    child: Image.network(
                                      snapshot.data!,
                                      fit: BoxFit.cover,
                                    ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting ||
                                  !snapshot.hasData) {
                                return Text("Stupid flutter");
                              }
                              return Text("Stupid flutter");
                            }),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("請上傳照片"),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () async {
                            final results = await FilePicker.platform.pickFiles(
                              allowMultiple: false,
                              type: FileType.custom,
                              allowedExtensions: ['png', 'jpg'],
                            );
                            if (results == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('No file selected'),
                                ),
                              );
                              return null;
                            }
                            final path = results.files.single.path!;
                            final file = "123.jpg";

                            this.setState(() => result = "完成任務");
                            // print("1.filename:$filename");
                            storage.uploadFile(path, filename).then(
                                    (value) => this.setState(() => filename = file));
                            // Timer timer;
                            // timer =  new Timer(Duration(milliseconds: 1000), (){});
                          },
                          child: Text('upload file'),
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
    Log resquestLog = Log.addTaskLog(1, 2);
    addLog(resquestLog);
    changeTask2(1, 2, API);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}

class turtleTask3showDialog extends StatefulWidget {
  @override
  _task3showDialog createState() => _task3showDialog();
}

class _task3showDialog extends State<turtleTask3showDialog> {
  int number = 0, op = 0;
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  String result = "取消";
  String filename ="";

  void initState() {
    super.initState();
    setState(() {
      filename = currentUser + "123.jpg";
    });
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
                        flex: 7,
                        child: FutureBuilder(
                            future: storage.downloadURL('$filename'),
                            // future: storage.listFiles(),
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done &&
                                  snapshot.hasData) {
                                return Container(
                                    width: 300,
                                    height: 250,
                                    child: Image.network(
                                      snapshot.data!,
                                      fit: BoxFit.cover,
                                    ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting ||
                                  !snapshot.hasData) {
                                return Text("載入中");
                              }
                              return Text("請上傳圖片");
                            }),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("請上傳照片"),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () async {
                            final results = await FilePicker.platform.pickFiles(
                              allowMultiple: false,
                              type: FileType.custom,
                              allowedExtensions: ['png', 'jpg'],
                            );
                            if (results == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('No file selected'),
                                ),
                              );
                              return null;
                            }
                            final path = results.files.single.path!;
                            final file = filename;

                            this.setState(() => result = "完成任務");
                            // print("1.filename:$filename");
                            storage.uploadFile(path, filename).then(
                                    (value) => this.setState(() => filename = file));
                            // Timer timer;
                            // timer =  new Timer(Duration(milliseconds: 1000), (){});
                          },
                          child: Text('上傳照片'),
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
    Log resquestLog = Log.addTaskLog(1, 3);
    addLog(resquestLog);
    changeTask2(1, 3, API);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}
