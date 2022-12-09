//@dart=2.12
import 'dart:async';

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../firebase/database_service.dart';
import '../../firebase/log_service.dart';
import '../../firebase/map_service.dart';
import '../../model/achievements_model/logs_model.dart';
import '../../model/map_model/map_model.dart';
import '../../video.dart';

var times = 0;
late LatLng target;
late LatLng myLoc222;
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
  List<Widget> _approvalNumberWidget = [];
  double? volumes = 1.0;
  VideoPlayerScreen newVideoPlayerScreen = VideoPlayerScreen(
      path: 'assets/video/voice1.mp4', volume: 1, height: 0, width: 0);

  AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
  StreamSubscription<Map<String, Object>>? _locationListener;
  final Map<String, Marker> initMarkerMap = <String, Marker>{};
  List jsonResponse = [];
  List<MapData> allMap = [];
  var result;

  @override
  void initState() {
    // TODO: implement initState
    var volumes = 1.0;
    newVideoPlayerScreen.run(volumes);
    requestPermission();

    setState(() {
      // myLoc222 = LatLng(24.197899221352937, 120.64250092953444);
      // myLoc222 = LatLng(24.173068, 120.642312);
      myLoc222 = LatLng(24.184014, 120.64676300000002);
      Marker marker = Marker(
        icon:
        BitmapDescriptor.fromIconPath("assets/images/animals/whale_map.png"),
        position: myLoc222,
        infoWindowEnable: true,
        draggable: true,
        onTap: (s) async {
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
          snippet: "\n簡介!!!!" + "item.snippet" + "\n添加者:" + "item.user",
        ),
        // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      );
      initMarkerMap[marker.id] = marker;
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
  late LatLng myLoc = LatLng(24.071087778636508, 120.64362036428265);
  late LatLng mapCenter = LatLng(24.071087778636508, 120.64362036428265);

  moveCamera(LatLng currentLatLng) {
    if (null != _controller) {
      mapCenter = currentLatLng;
      _controller!.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: currentLatLng,
        zoom: 50,
      )));
    } else {
      print("???");
    }
  }

  @override
  Widget build(BuildContext context) {
    // target = LatLng(24.18409, 120.646756);
    // target = LatLng(24.18409 + 0.01, 120.646756 + 0.01);
    target = myLoc222;

    final AMapWidget map = AMapWidget(
      ///初始化中心定
      initialCameraPosition: CameraPosition(
        target: mapCenter,
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
        print('location.latLng isChangeLocation');
        // times++;
        //0.010076 //0.01
        //0.001076 //0.01
        setState(() {
          myLoc = location.latLng;
          times++;
          var tempV = (target.latitude - location.latLng.latitude).abs();
          if ((target.latitude - location.latLng.latitude).abs() > 0.0001) {
            volumes =
                1 - ((target.latitude - location.latLng.latitude).abs() / 0.01);
            newVideoPlayerScreen.run(volumes!);
            // show('$target vs $location.latLng($times)\n=>$tempV');
          }
          if ((target.latitude - location.latLng.latitude).abs() <= 0.0001) {
            // result = "完成任務";
            show('完成任務!!!');
          }
        });
        super.initState();
        //
        // }
        if (!isChangeLocation) {
          myLoc = mapCenter;
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
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: Icon(Icons.sixteen_mp_rounded),
            onPressed: () {
              var tempV = 1 - ((target.latitude - myLoc.latitude).abs() / 0.01);
              var str='目標:$target \n 定位: $myLoc \n 音量: $tempV ($volumes)';
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
              show(myLoc);
              setState(() {
                Marker marker = Marker(
                  icon:
                  BitmapDescriptor.fromIconPath("assets/images/animals/whale_map.png"),
                  position: myLoc222,
                  infoWindowEnable: true,
                  draggable: true,
                  onTap: (s) async {
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
                    snippet: "\n簡介!!!!" + "item.snippet" + "\n添加者:" + "item.user",
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
              // final currentUser =
              //     FirebaseAuth.instance.currentUser!.uid.toString();
              // MapData mapData = MapData(currentUser, mapCenter.latitude,
              //     mapCenter.longitude, "垃圾桶", "垃圾桶", "這是垃圾桶");
              // createApi(mapData);
              // addMap(mapData);
              // Log resquestLog = Log.addTaskLog(5, 2);
              // addLog(resquestLog);
              // changeTask(5, 2);
              // Navigator.of(context).pop(true);
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
    Log resquestLog = Log.addTaskLog(5, 3);
    addLog(resquestLog);
    changeTask(5, 2);
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