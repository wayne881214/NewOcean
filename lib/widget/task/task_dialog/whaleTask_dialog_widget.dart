import 'dart:async';
import 'dart:math';
import 'package:all_sensors/all_sensors.dart' as name;

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../firebase/User.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../firebase/map_service.dart';
import '../../../model/achievements_model/logs_model.dart';
import '../../../model/map_model/map_model.dart';
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
}

class _WhaleGPSBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WhaleGPSState();
}

class _WhaleGPSState extends State<_WhaleGPSBody> {
  List<Widget> _approvalNumberWidget = [];

  AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
  StreamSubscription<Map<String, Object>>? _locationListener;
  final Map<String, Marker> initMarkerMap = <String, Marker>{};
  List jsonResponse = [];
  List<MapData> allMap = [];
  var result;

  @override
  void initState() {
    // TODO: implement initState
    DatabaseReference Ref = FirebaseDatabase.instance.ref('Map/');
    jsonResponse = [];
    Ref.onChildAdded.listen((event) async {
      Map mapValue = (event.snapshot.value as Map);
      this.setState(() {
        jsonResponse.add(new Map<String, dynamic>.from(mapValue));
        allMap =
            jsonResponse.map((item) => new MapData.fromJson(item)).toList();
      });
    });
    super.initState();
    requestPermission();

    AMapLocationOption loacationOption = AMapLocationOption(
      onceLocation: true,
    );
    _locationPlugin.setLocationOption(loacationOption);
    _locationListener = _locationPlugin
        .onLocationChanged()
        .listen((Map<String, Object> result) {
      /// 处理模型转换，或者与GetController绑定，更新widget
    });
    _locationPlugin.startLocation();
  }

  /// 动态申请定位权限
  void requestPermission() async {
    // 申请权限
    bool hasLocationPermission = await requestLocationPermission();
    if (hasLocationPermission) {
      print("定位权限申请通过");
    } else {
      print("定位权限申请不通过");
    }
  }

  /// 申请定位权限
  /// 授予定位权限返回true， 否则返回false
  Future<bool> requestLocationPermission() async {
    //获取当前的权限
    var status = await Permission.location.status;
    if (status == PermissionStatus.granted) {
      //已经授权
      return true;
    } else {
      //未授权则发起一次申请
      status = await Permission.location.request();
      if (status == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  Future<List<MapData>> _fetchLogs() async {
    return jsonResponse.map((item) => new MapData.fromJson(item)).toList();
  }

  AMapController? _controller;
  bool isChangeLocation = false;
  // late LatLng myLoc = LatLng(24.071087778636508, 120.64362036428265);
  // late LatLng mapCenter = LatLng(24.071087778636508, 120.64362036428265);
  late LatLng myLoc = LatLng(0, 0);
  late LatLng mapCenter = LatLng(0, 0);

  moveCamera(LatLng currentLatLng) {
    if (null != _controller) {
      mapCenter = currentLatLng;
      _controller!.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: currentLatLng,
        zoom: 50,
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    allMap.forEach((item) {
      LatLng position = LatLng(item.latitude, item.longitude);
      Marker marker = Marker(
        icon: BitmapDescriptor.fromIconPath(
            "assets/images/animals/whale_map.png"),
        position: position,
        infoWindowEnable: true,
        draggable: true,
        onTap: (s) async {
          if (item.latitude - mapCenter.latitude <= 0.0001 &&
              item.longitude - mapCenter.longitude <= 0.0001) {
            show('完成任務');
            result = '完成任務';
            _checkAndPush();
          } else {
            show('太遠了');
          }
        },
        infoWindow: InfoWindow(
          title: item.title,
          snippet: "\n簡介" + item.snippet + "\n添加者:" + item.user,
        ),
        // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      );
      initMarkerMap[marker.id] = marker;
    });

    final AMapWidget map = AMapWidget(
      ///初始化中心定
      initialCameraPosition: CameraPosition(
        target: mapCenter,
        zoom: 50,
      ),
      buildingsEnabled: true,
      trafficEnabled: true,
      // mapType:MapType.satellite,
      /// 我的位置自定义配置
      myLocationStyleOptions: MyLocationStyleOptions(
        true,
        // icon:BitmapDescriptor.defaultMarkerWithHue(240.0),
        circleFillColor: Colors.lightBlue,
        circleStrokeColor: Colors.blue,
        circleStrokeWidth: 3,
        // icon: BitmapDescriptor.defaultMarker,
      ),

      /// 地图创建成功回调
      onMapCreated: (AMapController controller) async {
        _controller = controller;
      },

      /// 定位回调
      onLocationChanged: (AMapLocation location) {
        print('location.latLng isChangeLocation');

        if (!isChangeLocation) {
          myLoc = mapCenter;
          myLoc = location.latLng;
          moveCamera(myLoc);
          // print('location.latLng onLocationChanged');
          // print(myLoc);
          // print(location.latLng);
          isChangeLocation = true;
          super.initState();
        }
      },
      markers: Set<Marker>.of(initMarkerMap.values),

      /// POI点击回调
      onPoiTouched: (AMapPoi poi) {
        print(poi.name);
      },
      compassEnabled: true,
    );

    return Scaffold(
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: map,
              ),
            ],
          ),
        ),
        floatingActionButton:
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: Icon(Icons.gps_fixed),
            onPressed: () {
              {
                moveCamera(myLoc);
                print('moveCamera to');
                print(myLoc);
              }
            },
            heroTag: null,
          )
        ]));
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
