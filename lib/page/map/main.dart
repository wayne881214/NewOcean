import 'dart:async';

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


import 'show_map_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage3 extends StatefulWidget {
  final String title;

  const MyHomePage3({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage3> createState() => _MyHomePageState3();
}

class _MyHomePageState3 extends State<MyHomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Object>? _locationResult;

  late StreamSubscription<Map<String, Object>> _locationListener;

  AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();

  @override
  void initState() {
    super.initState();

    /// 动态申请定位权限
    requestPermission();
    // AMapFlutterLocation.setApiKey(
    //     "f6c46787c43cb7df5510d9f4c530fd1e", "ios ApiKey");

    ///注册定位结果监听
    _locationListener = _locationPlugin
        .onLocationChanged()
        .listen((Map<String, Object> result) {
      setState(() {
        _locationResult = result;
      });
    });
  }

  ///开始定位
  void _startLocation() {
    if (null != _locationPlugin) {
      ///开始定位之前设置定位参数
      _setLocationOption();
      _locationPlugin.startLocation();
    }
  }

  ///设置定位参数
  void _setLocationOption() {
    if (null != _locationPlugin) {
      AMapLocationOption locationOption = new AMapLocationOption();

      ///是否单次定位
      locationOption.onceLocation = false;

      ///是否需要返回逆地理信息
      locationOption.needAddress = true;

      ///逆地理信息的语言类型
      locationOption.geoLanguage = GeoLanguage.DEFAULT;

      locationOption.desiredLocationAccuracyAuthorizationMode =
          AMapLocationAccuracyAuthorizationMode.ReduceAccuracy;

      locationOption.fullAccuracyPurposeKey = "AMapLocationScene";

      ///设置Android端连续定位的定位间隔
      locationOption.locationInterval = 2000;

      ///设置Android端的定位模式<br>
      ///可选值：<br>
      ///<li>[AMapLocationMode.Battery_Saving]</li>
      ///<li>[AMapLocationMode.Device_Sensors]</li>
      ///<li>[AMapLocationMode.Hight_Accuracy]</li>
      locationOption.locationMode = AMapLocationMode.Hight_Accuracy;

      ///设置iOS端的定位最小更新距离<br>
      locationOption.distanceFilter = -1;

      ///设置iOS端期望的定位精度
      /// 可选值：<br>
      /// <li>[DesiredAccuracy.Best] 最高精度</li>
      /// <li>[DesiredAccuracy.BestForNavigation] 适用于导航场景的高精度 </li>
      /// <li>[DesiredAccuracy.NearestTenMeters] 10米 </li>
      /// <li>[DesiredAccuracy.Kilometer] 1000米</li>
      /// <li>[DesiredAccuracy.ThreeKilometers] 3000米</li>
      locationOption.desiredAccuracy = DesiredAccuracy.Best;

      ///设置iOS端是否允许系统暂停定位
      locationOption.pausesLocationUpdatesAutomatically = false;

      ///将定位参数设置给定位插件
      _locationPlugin.setLocationOption(locationOption);
    }
  }

  ///停止定位
  void _stopLocation() {
    if (null != _locationPlugin) {
      _locationPlugin.stopLocation();
    }
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

  Widget _resultWidget(key, value) {
    return new Container(
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            alignment: Alignment.centerRight,
            width: 100.0,
            child: new Text('$key :'),
          ),
          new Container(width: 5.0),
          new Flexible(child: new Text('$value', softWrap: true)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    _locationResult?.forEach((key, value) {
      widgets.add(_resultWidget(key, value));
    });

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ElevatedButton(
              onPressed: _startLocation,
              child: new Text('开始定位'),
            ),
            new Container(width: 20.0),
            new ElevatedButton(
              onPressed: _stopLocation,
              child: new Text('停止定位'),
            ),
            new Container(width: 20.0),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return MyHomePage3(title: 'Flutter Demo Home Page');
                }));
              },
              child: new Text('跳转到地图'),
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ShowMapPage();
                }));
              },
              child: new Text('跳转到地图2'),
            ),
            ...widgets,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          debugPrint('=======_MyHomePageState.build:定位开始');
          bool result = await requestLocationPermission();
          debugPrint('=======_MyHomePageState.build:result=$result');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// import 'dart:async';
//
// import 'package:amap_flutter_location/amap_flutter_location.dart';
// import 'package:amap_flutter_location/amap_location_option.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
//
//
// import 'show_map_page.dart';
//
// void main() {
//   runApp(MyHomePage3(title: 's',));
// }
//
// class Mymap extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ShowMapPage(),
//     );
//   }
// }
//
// class MyHomePage3 extends StatefulWidget {
//   final String title;
//
//   const MyHomePage3({Key? key, required this.title}) : super(key: key);
//
//   @override
//   State<MyHomePage3> createState() => _MyHomePageState3();
// }
//
// class _MyHomePageState3 extends State<MyHomePage3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text(widget.title)),
//         );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Map<String, Object>? _locationResult;
//
//   late StreamSubscription<Map<String, Object>> _locationListener;
//
//   AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
//
//   @override
//   void initState() {
//     super.initState();
//
//     /// 动态申请定位权限
//     requestPermission();
//     // AMapFlutterLocation.setApiKey(
//     //     "f6c46787c43cb7df5510d9f4c530fd1e", "ios ApiKey");
//
//     ///注册定位结果监听
//     _locationListener = _locationPlugin
//         .onLocationChanged()
//         .listen((Map<String, Object> result) {
//       setState(() {
//         _locationResult = result;
//       });
//     });
//   }
//
//   ///开始定位
//   void _startLocation() {
//     if (null != _locationPlugin) {
//       ///开始定位之前设置定位参数
//       _setLocationOption();
//       _locationPlugin.startLocation();
//     }
//   }
//
//   ///设置定位参数
//   void _setLocationOption() {
//     if (null != _locationPlugin) {
//       AMapLocationOption locationOption = new AMapLocationOption();
//
//       ///是否单次定位
//       locationOption.onceLocation = false;
//
//       ///是否需要返回逆地理信息
//       locationOption.needAddress = true;
//
//       ///逆地理信息的语言类型
//       locationOption.geoLanguage = GeoLanguage.DEFAULT;
//
//       locationOption.desiredLocationAccuracyAuthorizationMode =
//           AMapLocationAccuracyAuthorizationMode.ReduceAccuracy;
//
//       locationOption.fullAccuracyPurposeKey = "AMapLocationScene";
//
//       ///设置Android端连续定位的定位间隔
//       locationOption.locationInterval = 2000;
//
//       ///设置Android端的定位模式<br>
//       ///可选值：<br>
//       ///<li>[AMapLocationMode.Battery_Saving]</li>
//       ///<li>[AMapLocationMode.Device_Sensors]</li>
//       ///<li>[AMapLocationMode.Hight_Accuracy]</li>
//       locationOption.locationMode = AMapLocationMode.Hight_Accuracy;
//
//       ///设置iOS端的定位最小更新距离<br>
//       locationOption.distanceFilter = -1;
//
//       ///设置iOS端期望的定位精度
//       /// 可选值：<br>
//       /// <li>[DesiredAccuracy.Best] 最高精度</li>
//       /// <li>[DesiredAccuracy.BestForNavigation] 适用于导航场景的高精度 </li>
//       /// <li>[DesiredAccuracy.NearestTenMeters] 10米 </li>
//       /// <li>[DesiredAccuracy.Kilometer] 1000米</li>
//       /// <li>[DesiredAccuracy.ThreeKilometers] 3000米</li>
//       locationOption.desiredAccuracy = DesiredAccuracy.Best;
//
//       ///设置iOS端是否允许系统暂停定位
//       locationOption.pausesLocationUpdatesAutomatically = false;
//
//       ///将定位参数设置给定位插件
//       _locationPlugin.setLocationOption(locationOption);
//     }
//   }
//
//   ///停止定位
//   void _stopLocation() {
//     if (null != _locationPlugin) {
//       _locationPlugin.stopLocation();
//     }
//   }
//
//   /// 动态申请定位权限
//   void requestPermission() async {
//     // 申请权限
//     bool hasLocationPermission = await requestLocationPermission();
//     if (hasLocationPermission) {
//       print("定位权限申请通过");
//     } else {
//       print("定位权限申请不通过");
//     }
//   }
//
//   /// 申请定位权限
//   /// 授予定位权限返回true， 否则返回false
//   Future<bool> requestLocationPermission() async {
//     //获取当前的权限
//     var status = await Permission.location.status;
//     if (status == PermissionStatus.granted) {
//       //已经授权
//       return true;
//     } else {
//       //未授权则发起一次申请
//       status = await Permission.location.request();
//       if (status == PermissionStatus.granted) {
//         return true;
//       } else {
//         return false;
//       }
//     }
//   }
//
//   Widget _resultWidget(key, value) {
//     return new Container(
//       child: new Row(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           new Container(
//             alignment: Alignment.centerRight,
//             width: 100.0,
//             child: new Text('$key :'),
//           ),
//           new Container(width: 5.0),
//           new Flexible(child: new Text('$value', softWrap: true)),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> widgets = [];
//     _locationResult?.forEach((key, value) {
//       widgets.add(_resultWidget(key, value));
//     });
//
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new ElevatedButton(
//               onPressed: _startLocation,
//               child: new Text('开始定位'),
//             ),
//             new Container(width: 20.0),
//             new ElevatedButton(
//               onPressed: _stopLocation,
//               child: new Text('停止定位'),
//             ),
//             new Container(width: 20.0),
//             new ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (BuildContext context) {
//                   return MyHomePage3(title: 'Flutter Demo Home Page');
//                 }));
//               },
//               child: new Text('跳转到地图'),
//             ),
//             new ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (BuildContext context) {
//                   return ShowMapPage();
//                 }));
//               },
//               child: new Text('地圖'),
//             ),
//             ...widgets,
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           debugPrint('=======_MyHomePageState.build:定位开始');
//           bool result = await requestLocationPermission();
//           debugPrint('=======_MyHomePageState.build:result=$result');
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
