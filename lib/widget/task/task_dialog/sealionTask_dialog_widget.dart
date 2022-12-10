import 'dart:async';
import 'dart:developer';

import 'package:date_format/date_format.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sensors/sensors.dart';
import 'package:newocean/firebase/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import '../../../firebase/User.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';

class sealionTask1showDialog extends StatefulWidget {
  @override
  _ShakeshowDialog createState() => _ShakeshowDialog();
}
class _ShakeshowDialog extends State<sealionTask1showDialog> {
  int number = 0;
  String img = "assets/images/task_carousel_sea_lion_2.jpg";
  String result = "取消";

  void initState() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      // 摇一摇阀值,不同手机能达到的最大值不同，如某品牌手机只能达到20。
      int value = 15;
      if (event.x >= value ||
          event.x <= -value ||
          event.y >= value ||
          event.y <= -value ||
          event.z >= value ||
          event.z <= -value) {
        if (number < 50) {
          setState(() {
            number += 1;
          });
        }
        if (number == 50) {
          setState(() {
            img = "assets/images/animals/sealion.png";
            result = "完成任務";
          });
        }
        // if(op==1){
        //   setState(() {
        //     filename=filename;
        //   };
        // }
      }
    });
    super.initState();
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
                        flex: 6,
                        child: Image.asset(img ,
                            height: 300.00, width: 250.00)
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("搖晃手機以幫助海龜掙脫漁網"),
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
                                  animationDuration: 200,
                                  percent: number * 2  / 100,
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
  void _pushLog(){
    Log resquestLog = Log.addTaskLog(2 ,1);
    addLog(resquestLog);
    changeTask(2 ,1);
  }
  void _checkAndPush(){
    if(result=="完成任務"){
      _pushLog();
    }
  }
}


class sealionTask2showDialog extends StatefulWidget {
  @override
  _task2showDialog createState() => _task2showDialog();
}

class _task2showDialog extends State<sealionTask2showDialog> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String qrstr = "請掃描無塑商店的專屬QRcode";
  String resultText ="取消";

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    // super.reassemble();
    // if (Platform.isAndroid) {
    //   controller!.pauseCamera();
    // }
    // controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return
      Dialog(
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
                          flex: 1,
                          child: Text(qrstr,
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        Expanded(
                          flex: 8,
                          child:  Scaffold(
                            backgroundColor:Color(0x00FFFFFF),
                            body: Column(
                              children: <Widget>[
                                Expanded(flex: 4, child: _buildQrView(context)),
                                Expanded(
                                  flex: 1,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        if (result != null)
                                          Text(
                                              '掃描資料: ${result!.code}')
                                        else
                                          const Text('掃描QRcode'),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.all(8),
                                              child: ElevatedButton(
                                                  onPressed: () async {
                                                    await controller?.toggleFlash();
                                                    setState(() {});
                                                  },
                                                  child: FutureBuilder(
                                                    future: controller?.getFlashStatus(),
                                                    builder: (context, snapshot) {
                                                      return Text('手電筒: ${snapshot.data}');
                                                    },
                                                  )),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(8),
                                              child: ElevatedButton(
                                                  onPressed: () async {
                                                    await controller?.flipCamera();
                                                    setState(() {});
                                                  },
                                                  child: FutureBuilder(
                                                    future: controller?.getCameraInfo(),
                                                    builder: (context, snapshot) {
                                                      if (snapshot.data != null) {
                                                        return Text(
                                                            '翻轉鏡頭 ${describeEnum(snapshot.data!)}');
                                                      } else {
                                                        return const Text('等待中');
                                                      }
                                                    },
                                                  )),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),),
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
                                child: Text('$resultText'),

                              ),
                            ))
                      ])))),
        ),
      );

  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        var ans=result!.code;
        ans = ans.toString();
        if(ans=="store1 "||ans=="store1"||ans=="store2 "||ans=="store2"){
          resultText="完成任務";
        }
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }



  void _pushLog(){
    Log resquestLog = Log.addTaskLog(2, 2);
    addLog(resquestLog);
    changeTask2(2 ,2,API);
  }
  void _checkAndPush(){
    if(result=="完成任務"){
      _pushLog();
    }
  }
}


class sealionTask3showDialog extends StatefulWidget {
  @override
  _task3showDialog createState() => _task3showDialog();
}

class _task3showDialog extends State<sealionTask3showDialog> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String qrstr = "請掃描無塑商店的專屬QRcode";
  String resultText ="取消";

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    // super.reassemble();
    // if (Platform.isAndroid) {
    //   controller!.pauseCamera();
    // }
    // controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return
      Dialog(
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
                          flex: 1,
                          child: Text(qrstr,
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        Expanded(
                          flex: 8,
                          child:  Scaffold(
                            backgroundColor:Color(0x00FFFFFF),
                            body: Column(
                              children: <Widget>[
                                Expanded(flex: 4, child: _buildQrView(context)),
                                Expanded(
                                  flex: 1,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        if (result != null)
                                          Text(
                                              '掃描資料: ${result!.code}')
                                        else
                                          const Text('掃描QRcode'),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.all(8),
                                              child: ElevatedButton(
                                                  onPressed: () async {
                                                    await controller?.toggleFlash();
                                                    setState(() {});
                                                  },
                                                  child: FutureBuilder(
                                                    future: controller?.getFlashStatus(),
                                                    builder: (context, snapshot) {
                                                      return Text('手電筒: ${snapshot.data}');
                                                    },
                                                  )),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(8),
                                              child: ElevatedButton(
                                                  onPressed: () async {
                                                    await controller?.flipCamera();
                                                    setState(() {});
                                                  },
                                                  child: FutureBuilder(
                                                    future: controller?.getCameraInfo(),
                                                    builder: (context, snapshot) {
                                                      if (snapshot.data != null) {
                                                        return Text(
                                                            '翻轉鏡頭 ${describeEnum(snapshot.data!)}');
                                                      } else {
                                                        return const Text('等待中');
                                                      }
                                                    },
                                                  )),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),),
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
                                child: Text('$resultText'),

                              ),
                            ))
                      ])))),
        ),
      );

  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        var ans=result!.code;
        ans = ans.toString();
        if(ans=="store1 "||ans=="store1"||ans=="store2 "||ans=="store2"){
          resultText="完成任務";
        }
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }



  void _pushLog(){
    Log resquestLog = Log.addTaskLog(2, 3);
    addLog(resquestLog);
    changeTask3(2 ,3,API);
  }
  void _checkAndPush(){
    if(result=="完成任務"){
      _pushLog();
    }
  }
}
