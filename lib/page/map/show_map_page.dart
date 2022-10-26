//@dart=2.12
import 'dart:async';

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';

import '../../firebase/database_service.dart';
import '../../firebase/log_service.dart';
import '../../firebase/map_service.dart';
import '../../model/achievements_model/logs_model.dart';
import '../../model/map_model/map_model.dart';

class ShowMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('地圖'),
      // ),
      body: _ShowMapPageBody(),
    );
  }
}

class _ShowMapPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShowMapPageState();
}

class _ShowMapPageState extends State<_ShowMapPageBody> {
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

  Future<List<MapData>> _fetchLogs() async {
    return jsonResponse.map((item) => new MapData.fromJson(item)).toList();
  }

  AMapController? _controller;
  bool isChangeLocation = false;
  late LatLng myLoc = LatLng(24.171087778636508, 120.64362036428265);
  late LatLng mapCenter = LatLng(24.171087778636508, 120.64362036428265);

  moveCamera(LatLng currentLatLng) {
    if (null != _controller) {
      mapCenter = currentLatLng;
      _controller!.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: currentLatLng,
        zoom: 16,
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    allMap.forEach((item) {
      LatLng position = LatLng(item.latitude, item.longitude);
      Marker marker = Marker(
        icon: BitmapDescriptor.fromIconPath("assets/images/glass.png"),
        position: position,
        draggable: true,
        onTap: (s) async {
          if (item.latitude - mapCenter.latitude <= 0.001 &&
              item.longitude - mapCenter.longitude <= 0.001) {
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
        zoom: 2,
      ),
      buildingsEnabled: true,
      trafficEnabled: true,
      // mapType:MapType.satellite,
      /// 我的位置自定义配置
      myLocationStyleOptions: MyLocationStyleOptions(
        true,
        circleFillColor: Colors.lightBlue,
        circleStrokeColor: Colors.blue,
        circleStrokeWidth: 1,
        // icon: BitmapDescriptor.defaultMarker,
      ),

      /// 地图创建成功回调
      onMapCreated: (AMapController controller) async {
        _controller = controller;
      },

      /// 定位回调
      onLocationChanged: (AMapLocation location) {
        if (!isChangeLocation) {
          myLoc = mapCenter;
          moveCamera(myLoc);
          print('location.latLng');
          print(location.latLng);
          isChangeLocation = true;
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
          // FloatingActionButton(
          //   child: Icon(Icons.shower_outlined),
          //   onPressed: () async {
          //     changeTask(5, 0);
          //     show("還原任務->0");
          //     Navigator.of(context).pop(true);
          //   },
          //   heroTag: null,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // FloatingActionButton(
          //   child: Icon(Icons.shopping_cart_sharp),
          //   onPressed: () async {
          //     changeTask(5, 1);
          //     show("還原任務->1");
          //     Navigator.of(context).pop(true);
          //   },
          //   heroTag: null,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          FloatingActionButton(
            child: Icon(Icons.delete),
            onPressed: () {
              final currentUser =
                  FirebaseAuth.instance.currentUser!.uid.toString();
              MapData mapData = MapData(currentUser, mapCenter.latitude,
                  mapCenter.longitude, "垃圾桶", "垃圾桶", "這是垃圾桶");
              createApi(mapData);
              addMap(mapData);
              Log resquestLog = Log.addTaskLog(5, 2);
              addLog(resquestLog);
              changeTask(5, 2);
              Navigator.of(context).pop(true);
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.gps_fixed),
            onPressed: () => moveCamera(myLoc),
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
