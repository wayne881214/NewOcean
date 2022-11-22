import 'dart:async';

import 'package:all_sensors/all_sensors.dart' as name;
import 'package:date_format/date_format.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sensors/sensors.dart';
import 'package:newocean/firebase/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:math';

import '../../../firebase/User.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';
import '../../../video.dart';

class whaleTask1showDialog extends StatefulWidget {
  @override
  _ShakeshowDialog createState() => _ShakeshowDialog();
}

class _ShakeshowDialog extends State<whaleTask1showDialog> {
  double stateX = (Random().nextDouble() * 20) - 10;
  double stateY = (Random().nextDouble() * 20) - 10;
  double x = 0, y = 0, z = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "取消";
  List<StreamSubscription<dynamic>> _streamSubscriptions =
  <StreamSubscription<dynamic>>[];

  void initState() {
    super.initState();
    _streamSubscriptions
        .add(name.accelerometerEvents!.listen((name.AccelerometerEvent event) {
      setState(() {
        x = event.x;
        y = event.y;
        z = event.z;
      });
    }));
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
                      Align(
                        widthFactor: 10,
                        heightFactor: 6,
                        alignment: Alignment(-1 * x / 10, y / 10),
                        child: Image.network(img, height: 50, width: 50),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("搖晃手機幫助鯨魚判斷回家方向\n越接近鯨魚群進度條與海洋噪音會越小"),
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
                                  animationDuration: 0,
                                  percent: (20 - (x - stateX).abs()) * 5 / 100,
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
    Log resquestLog = Log.addTaskLog(3,1);
    addLog(resquestLog);
    changeTask(3,1);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}

class whaleTask2showDialog extends StatefulWidget {
  @override
  _task2showDialog createState() => _task2showDialog();
}

class _task2showDialog extends State<whaleTask2showDialog> {
  bool _proximityValues = false;
  String result = "取消";
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
                        child: Text("請上傳照片"),
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

class whaleTask3showDialog extends StatefulWidget {
  @override
  _task3showDialog createState() => _task3showDialog();
}

class _task3showDialog extends State<whaleTask3showDialog> {
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
                                    child: VideoPlayerScreen(path:'assets/video/video.mp4'));
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

  void _pushLog() {
    Log resquestLog = Log.addTaskLog(3,3);
    addLog(resquestLog);
    changeTask(3,3);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}
