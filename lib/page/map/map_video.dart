//@dart=2.12
import 'dart:async';
import 'dart:math';

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../firebase/User.dart';
import '../../firebase/database_service.dart';
import '../../firebase/log_service.dart';
import '../../model/achievements_model/logs_model.dart';
import '../../model/map_model/map_model.dart';
import '../../video.dart';

class Map_VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('地圖'),
      // ),
      body: _Map_VideoPageBody(),
    );
  }
}

class _Map_VideoPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Map_VideoPageState();
}

class _Map_VideoPageState extends State<_Map_VideoPageBody> {
  var times = 0;
  late bool visibleB = false;
  late Marker marker;
  late LatLng target;
  late LatLng myLoc;
  List<Widget> _approvalNumberWidget = [];
  double volumes = 1.0;
  VideoPlayerScreen newVideoPlayerScreen = VideoPlayerScreen(
      path: 'assets/video/voice1.mp4', volume: 1, height: 0, width: 0);

  AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
  StreamSubscription<Map<String, Object>>? _locationListener;
  late Map<String, Marker> initMarkerMap = <String, Marker>{};
  List jsonResponse = [];
  List<MapData> allMap = [];
  late double dis;
  var result = '取消';
  var targetStr;

  @override
  void initState() {
    // TODO: implement initState
    volumes = 1.0;
    newVideoPlayerScreen.run(volumes);
    requestPermission();
    target = LatLng(0, 0);
    myLoc = LatLng(0, 0);
    marker = Marker(
      icon:
          BitmapDescriptor.fromIconPath("assets/images/animals/whale_map.png"),
      position: target,
      visible: visibleB,
      infoWindowEnable: true,
      onTap: (s) async {
        show('??');
      },
      infoWindow: InfoWindow(
        title: '目標',
        snippet: "\n目標 0,0",
      ),
      // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    );
    initMarkerMap[marker.id] = marker;
    setState(() {
      // target = LatLng(24.197899221352937, 120.64250092953444);
      // target = LatLng(24.173068, 120.642312);
      // target = LatLng(24.184014, 120.64676300000002);
      // marker = Marker(
      //   icon: BitmapDescriptor.fromIconPath(
      //       "assets/images/animals/whale_map.png"),
      //   position: target,
      //   infoWindowEnable: true,
      //   onTap: (s) async {
      //     // if (target.latitude - mapCenter.latitude <= 0.0001 &&
      //     //     target.longitude - mapCenter.longitude <= 0.0001) {
      //     //   show('完成任務');
      //     //   // result = '完成任務';
      //     //   // _checkAndPush();
      //     // } else {
      //     //   show('太遠了');
      //     // }
      //   },
      //   infoWindow: InfoWindow(
      //     title: '目標',
      //     snippet: "\n目標",
      //   ),
      //   // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      // );
      // initMarkerMap[marker.id] = marker;
    });
    super.initState();

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

  moveCamera(LatLng currentLatLng) {
    if (null != _controller) {
      myLoc = currentLatLng;
      _controller!.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: currentLatLng,
        zoom: 50,
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    // target = LatLng(24.18409, 120.646756);
    // target = LatLng(24.18409 + 0.01, 120.646756 + 0.01);

    final AMapWidget map = AMapWidget(
      ///初始化中心定
      initialCameraPosition: CameraPosition(
        target: myLoc,
        zoom: 50,
      ),
      buildingsEnabled: true,
      trafficEnabled: true,
      labelsEnabled: true,
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
        HapticFeedback.mediumImpact();

        print('location.latLng isChangeLocation');
        // times++;
        //0.010076 //0.01
        //0.001076 //0.01
        setState(() {
          myLoc = location.latLng;
          times++;
          if (times == 3) {
            var i = Random().nextInt(10000);
            double positionRandom = i * 0.0000001;
            target = LatLng(myLoc.latitude + positionRandom,
                myLoc.longitude + positionRandom);
            // target = LatLng(myLoc.latitude + 0.001, myLoc.longitude+ 0.001);
            targetStr = 'Data:' +
                target.latitude.toString() +
                '\n' +
                target.longitude.toString();
            marker = Marker(
              icon: BitmapDescriptor.fromIconPath(
                  "assets/images/animals/whale_map.png"),
              position: target,
              visible: visibleB,
              infoWindowEnable: true,
              onTap: (s) async {
                show('!!');
                // if (target.latitude - mapCenter.latitude <= 0.0001 &&
                //     target.longitude - mapCenter.longitude <= 0.0001) {
                //   show('完成任務');
                //   // result = '完成任務';
                //   // _checkAndPush();
                // } else {
                //   show('太遠了');
                // }
              },
              infoWindow: InfoWindow(
                title: '目標',
                snippet: targetStr,
              ),
              // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
            );
            initMarkerMap[marker.id] = marker;
          }
          var tempV = (target.latitude - location.latLng.latitude).abs();
          dis=_getDistance(myLoc.latitude,myLoc.longitude,target.latitude,target.longitude);
          // show('$volumes $dis');
          volumes = 1 - dis / 200;
          newVideoPlayerScreen.run(volumes!);
          if (volumes < 0.8) {
            result = "取消";
          } else {
            result = "完成任務";
          }
        });
        super.initState();
        //
        // }
        if (!isChangeLocation) {
          myLoc = location.latLng;
          moveCamera(myLoc);
          print('location.latLng onLocationChanged');
          print(location.latLng);
          isChangeLocation = true;

          super.initState();
        }
        myLoc = location.latLng;
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
              Container(child: newVideoPlayerScreen),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: map,
              ),
              ElevatedButton(
                onPressed: () {
                  _checkAndPush();
                  Navigator.of(context).pop(true);
                },
                child: Text('$result'),
              ),
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: Icon(Icons.sixteen_mp_rounded),
            onPressed: () {
              dis=_getDistance(myLoc.latitude,myLoc.longitude,target.latitude,target.longitude);
              var str = '目標:$target \n 定位: $myLoc \n 音量: $volumes \n距離:$dis 米)';
              show('$str');
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                if (visibleB) {
                  show('困難模式(聽覺)');
                  visibleB = false;
                } else {
                  show('簡單模式');
                  visibleB = true;
                }
                initMarkerMap = <String, Marker>{};
                // visibleB =-visibleB;
                marker = Marker(
                  icon: BitmapDescriptor.fromIconPath(
                      "assets/images/animals/whale_map.png"),
                  position: target,
                  draggable : true,
                  infoWindowEnable: true,
                  onTap: (s) async {
                    show('!!');
                    // if (target.latitude - mapCenter.latitude <= 0.0001 &&
                    //     target.longitude - mapCenter.longitude <= 0.0001) {
                    //   show('完成任務');
                    //   // result = '完成任務';
                    //   // _checkAndPush();
                    // } else {
                    //   show('太遠了');
                    // }
                  },
                  infoWindow: InfoWindow(
                    title: '目標',
                    snippet: targetStr,
                  ),
                  // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
                );
                initMarkerMap[marker.id] = marker;
              });
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.delete),
            onPressed: () {
              moveCamera(target);
              print('moveCamera to target');
              print(target);
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.gps_fixed),
            onPressed: () {
              {
                var myLocStr = 'myLocData:' +
                    myLoc.latitude.toString() +
                    '\n' +
                    myLoc.longitude.toString();
                show(myLocStr);
                moveCamera(myLoc);
                // print('moveCamera to');
                // print(myLoc);
              }
            },
            heroTag: null,
          )
        ]));
  }

  void _pushLog() {
    Log resquestLog = Log.addTaskLog(3, 2);
    addLog(resquestLog);
    changeTask2(3, 2, API);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
  /// 根据两点经纬度 使用math 算出之间距离
  /// 导入import 'dart:math';
  _getDistance(double lat1, double lng1, double lat2, double lng2) {
    /// 单位：米
    /// def ：地球半径
    double def = 6378137.0;
    double radLat1 = _rad(lat1);
    double radLat2 = _rad(lat2);
    double a = radLat1 - radLat2;
    double b = _rad(lng1) - _rad(lng2);
    double s = 2 * asin(sqrt(pow(sin(a / 2), 2) + cos(radLat1) * cos(radLat2) * pow(sin(b / 2), 2)));
    return (s * def ).roundToDouble();
  }

  double _rad(double d) {
    return d * pi / 180.0;
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
