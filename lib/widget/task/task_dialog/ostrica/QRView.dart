import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';



class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String qrstr = "請掃描無塑商店的專屬QRcode";
  String resultText ="取消";

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
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
                                          const Text('掃描QRcode\n(若鏡頭沒畫面，請翻轉鏡頭)'),
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
                                  // _checkAndPush();
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
}
