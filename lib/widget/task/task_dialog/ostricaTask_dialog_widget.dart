// import 'dart:async';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:date_format/date_format.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sensors/sensors.dart';
import 'package:newocean/firebase/storage_service.dart';

import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';

// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class ostricaTask1showDialog extends StatefulWidget {
  @override
  _ostricaTask1showDialog createState() => _ostricaTask1showDialog();
}

class _ostricaTask1showDialog extends State<ostricaTask1showDialog> {
  int number = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "完成任務";
  String qrstr = 'add data';

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
        if (number < 10) {
          setState(() {
            number += 1;
          });
        }
        if (number == 10) {
          setState(() {
            img =
            "https://memeprod.ap-south-1.linodeobjects.com/user-gif-thumbnail/eb4e861fd45a3a55cd2683ab47231d49.gif";
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
    qrstr = '1';
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
                        child: BarcodeWidget(
                          data: qrstr,
                          barcode: Barcode.qrCode(),
                          color: Color(0xFF000000),
                          height: 250,
                          width: 250,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("請將QRcode截圖並印出貼在你的環保用具上"),
                      ),
                      // Expanded(
                      //   flex: 2,
                      //   child: Container(
                      //     alignment: Alignment.center,
                      //     width: MediaQuery.of(context).size.width * 8,
                      //     child: TextField(
                      //         maxLength: 50,
                      //         // decoration: InputDecoration(
                      //         //     hintText: '輸入資料(測試用)',
                      //         //     // ignore: prefer_const_constructors
                      //         //     hintStyle: TextStyle(color: Colors.white),
                      //         //     filled: true,
                      //         //     fillColor: Color(0xFF00BFA5),
                      //         //     // ignore: prefer_const_constructors
                      //         //     border: OutlineInputBorder(
                      //         //         borderSide:
                      //         //         // ignore: prefer_const_constructors
                      //         //         BorderSide(
                      //         //             color: Color(0xFF00BFA5), width: 2))),
                      //         // onChanged: (value) {
                      //         //   qrstr = value;
                      //         // }
                      //         ),
                      //   ),
                      // ),
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
    Log resquestLog = Log.addTaskLog(4, 1);
    addLog(resquestLog);
    changeTask(4 ,1);
  }

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}

// 環保用具  https://i.imgur.com/8HvBrIe.jpg
// 環保商店1 https://i.imgur.com/Z7hvZNe.jpg

