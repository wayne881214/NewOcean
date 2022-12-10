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
import '../../../page/map/map_video.dart';
import '../../../page/map/show_map_page.dart';
import '../../../video.dart';

class whaleTask1showDialog extends StatefulWidget {
  @override
  _ShakeshowDialog createState() => _ShakeshowDialog();
}

class _ShakeshowDialog extends State<whaleTask1showDialog> {
  double stateX = (Random().nextDouble() * 20) - 10;
  double stateY = (Random().nextDouble() * 20) - 10;
  double x = 0, y = 0, z = 0 ;
  double? sizeX = 50, sizeY = 50;
  double? volumes = 1.0;
  VideoPlayerScreen newVideoPlayerScreen = VideoPlayerScreen(path:'assets/video/voice1.mp4',volume:1,height: 0,width:0);
  String img = "assets/images/animals/whale.png";
  String result = "取消";
  List<StreamSubscription<dynamic>> _streamSubscriptions =
  <StreamSubscription<dynamic>>[];

  void initState() {
    super.initState();
    _streamSubscriptions.add(name.accelerometerEvents!.listen((name.AccelerometerEvent event) {
      setState(() {
        if((x-stateX).abs() > 3 ) {
          volumes = 1- ( (x-stateX).abs()/10);
          newVideoPlayerScreen.run(volumes!);
          x = event.x;
          y = event.y;
          z = event.z;
        }
        if((x - stateX).abs() <= 3 ){
          x = stateX ;
          sizeX = 50;
          sizeY = 50;
          result = "完成任務";
        }
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
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/inages/task_carousel_coral_1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                            widthFactor: 10,
                            heightFactor: 6,
                            alignment: Alignment(-1 * x / 10, y / 10),
                            child: Image.asset( img ,height: sizeX, width: sizeY)
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:Container(
                         child: newVideoPlayerScreen
                        )
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
                        child: Map_VideoPage(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("尋找鯨魚"),
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
                        child: ShowMapPage(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("到環保站點打卡"),
                      )
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
