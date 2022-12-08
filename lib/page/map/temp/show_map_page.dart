// //@dart=2.12
// import 'dart:async';
//
// import 'package:amap_flutter_location/amap_flutter_location.dart';
// import 'package:amap_flutter_location/amap_location_option.dart';
// import 'package:amap_flutter_map/amap_flutter_map.dart';
// import 'package:flutter/material.dart';
// import 'package:amap_flutter_base/amap_flutter_base.dart';
//
// class ShowMapPage1208 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('地图'),
//       ),
//       body: _ShowMapPageBody1208(),
//     );
//   }
// }
//
// class _ShowMapPageBody1208 extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _ShowMapPage1208State();
// }
//
// class _ShowMapPage1208State extends State<_ShowMapPageBody1208> {
//   List<Widget> _approvalNumberWidget = [];
//
//   AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
//   StreamSubscription<Map<String, Object>>? _locationListener;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     AMapLocationOption loacationOption = AMapLocationOption(
//       onceLocation: true,
//     );
//     _locationPlugin.setLocationOption(loacationOption);
//     _locationListener = _locationPlugin
//         .onLocationChanged()
//         .listen((Map<String, Object> result) {
//       /// 处理模型转换，或者与GetController绑定，更新widget
//     });
//     _locationPlugin.startLocation();
//   }
//   final Map<String, Marker> initMarkerMap = <String, Marker>{};
//   AMapController? _controller;
//   bool isChangeLocation = false;
//   late LatLng mapCenter=LatLng(24.171087778636508, 120.64362036428265);
//
//   void _moveCamera(LatLng currentLatLng) {
//     if (null != _controller) {
//       mapCenter=currentLatLng;
//       _controller!.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
//         target: currentLatLng,
//         zoom: 16,
//       )));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // final AMapWidget map = AMapWidget(
//     //   onMapCreated: onMapCreated,
//     //   // 定位小蓝点配置
//     //   myLocationStyleOptions: MyLocationStyleOptions(true),
//     //   // 是否指南针
//     //   compassEnabled: true,
//     // );
//     for(int i=0; i< 10; i++) {
//       LatLng position = LatLng(
//           mapCenter.latitude + 0.0001*i,
//           mapCenter.longitude +  0.001*i );
//       Marker marker = Marker(position: position,draggable:true);
//       initMarkerMap[marker.id] = marker;
//     }
//
//     final AMapWidget map = AMapWidget(
//       ///初始化中心定
//       initialCameraPosition: CameraPosition(
//         target: mapCenter,
//         zoom: 16,
//       ),
//       buildingsEnabled:true,
//       trafficEnabled:true,
//       // mapType:MapType.satellite,
//       /// 我的位置自定义配置
//       myLocationStyleOptions: MyLocationStyleOptions(
//         true,
//         circleFillColor: Colors.lightBlue,
//         circleStrokeColor: Colors.blue,
//         circleStrokeWidth: 1,
//       ),
//
//       /// 地图创建成功回调
//       onMapCreated: (AMapController controller) async {
//         _controller = controller;
//       },
//
//       /// 定位回调
//       onLocationChanged: (AMapLocation location) {
//         if (!isChangeLocation) {
//           _moveCamera(location.latLng);
//           print('location.latLng');
//           print(location.latLng);
//           isChangeLocation = true;
//         }
//       },
//       markers: Set<Marker>.of(initMarkerMap.values),
//
//       /// POI点击回调
//       onPoiTouched: (AMapPoi poi) {
//         print(poi.name);
//       },
//       compassEnabled: true,
//     );
//
//     return ConstrainedBox(
//       constraints: BoxConstraints.expand(),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: map,
//           ),
//           Positioned(
//               right: 10,
//               bottom: 15,
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: _approvalNumberWidget),
//               ))
//         ],
//       ),
//     );
//   }
//
//   AMapController? _mapController;
//
//   void onMapCreated(AMapController controller) {
//     setState(() {
//       _mapController = controller;
//       getApprovalNumber();
//     });
//   }
//
//   /// 获取审图号
//   void getApprovalNumber() async {
//     //普通地图审图号
//     String? mapContentApprovalNumber =
//         await _mapController?.getMapContentApprovalNumber();
//     //卫星地图审图号
//     String? satelliteImageApprovalNumber =
//         await _mapController?.getSatelliteImageApprovalNumber();
//     setState(() {
//       if (null != mapContentApprovalNumber) {
//         _approvalNumberWidget.add(Text(mapContentApprovalNumber));
//       }
//       if (null != satelliteImageApprovalNumber) {
//         _approvalNumberWidget.add(Text(satelliteImageApprovalNumber));
//       }
//     });
//     print('地图审图号（普通地图）: $mapContentApprovalNumber');
//     print('地图审图号（卫星地图): $satelliteImageApprovalNumber');
//   }
// }
