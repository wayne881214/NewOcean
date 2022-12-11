import 'dart:async';

import 'package:all_sensors/all_sensors.dart' as name;
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:math';

import '../../../firebase/User.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';
import '../../../page/map/map_video.dart';
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
  String background = "assets/images/task_carousel_coral_1.png";
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
          sizeX = 0;
          sizeY = 0;
          background = "assets/images/animals/whale.png";
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
                            image: AssetImage(background),
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

                    ])))),
      ),
    );
  }


}

class whaleTask3showDialog extends StatefulWidget {
  @override
  _task3showDialog createState() => _task3showDialog();
}
class _task3showDialog extends State<whaleTask3showDialog> {
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
                        child: _WhaleGPSBody(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("尋找鯨魚"),
                      ),
                    ])))),
      ),
    );
  }

  void _pushLog() {
    Log resquestLog = Log.addTaskLog(3, 3);
    addLog(resquestLog);
    changeTask3(3, 3, API);

  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
      Navigator.of(context).pop(true);
    }
  }

  AMapController? _mapController;

  void onMapCreated(AMapController controller) {
    setState(() {
      _mapController = controller;
      getApprovalNumber();
    });
  }

  /// 获取审图号
  void getApprovalNumber() async {
    //普通地图审图号
    String? mapContentApprovalNumber =
    await _mapController?.getMapContentApprovalNumber();
    //卫星地图审图号
    String? satelliteImageApprovalNumber =
    await _mapController?.getSatelliteImageApprovalNumber();
    setState(() {
      if (null != mapContentApprovalNumber) {
        _approvalNumberWidget.add(Text(mapContentApprovalNumber));
      }
      if (null != satelliteImageApprovalNumber) {
        _approvalNumberWidget.add(Text(satelliteImageApprovalNumber));
      }
    });
    print('地图审图号（普通地图）: $mapContentApprovalNumber');
    print('地图审图号（卫星地图): $satelliteImageApprovalNumber');
  }
}
