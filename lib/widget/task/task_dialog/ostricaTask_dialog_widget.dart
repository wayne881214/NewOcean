// import 'dart:async';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sensors/sensors.dart';
import 'package:newocean/firebase/storage_service.dart';

import 'ostrica/readQR.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class ostricaTask1showDialog extends StatefulWidget {
  @override
  _ostricaTask1showDialog createState() => _ostricaTask1showDialog();
}

class _ostricaTask1showDialog extends State<ostricaTask1showDialog> {
  int number = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "取消";
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
                      color: Color(0xFF00BFA5),
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("請將QRcode下載並印出貼在你的環保用具上"),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 8,
                        child: TextField(
                            maxLength: 50,
                            decoration: InputDecoration(
                                hintText: '輸入資料(測試用)',
                                // ignore: prefer_const_constructors
                                hintStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Color(0xFF00BFA5),
                                // ignore: prefer_const_constructors
                                border: OutlineInputBorder(
                                    borderSide:
                                    // ignore: prefer_const_constructors
                                    BorderSide(color: Color(0xFF00BFA5), width: 2))),
                            onChanged: (value) {
                              qrstr = value;
                            }),
                      ),),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 100, // <-- Your width
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text('$result'),
                        ),
                      ))
                ])))),
      ),
    );
  }
}

class ostricaTask2showDialog extends StatefulWidget {
  @override
  _ostricaTask2showDialog createState() => _ostricaTask2showDialog();
}

class _ostricaTask2showDialog extends State<ostricaTask2showDialog> {
  int number = 0, op = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "取消";
  String filename = "123.jpg";
  String qrstr = "請掃描環保用具上的QRcode";

  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    print("2.filename:$filename");
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
                    flex: 1,
                    child: Text(qrstr,
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  Expanded(
                    flex: 6,
                    child: Icon(
                      Icons.qr_code_scanner,
                      size: 200.0,
                      color: Color(0xFF00BFA5),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          scanQR();
                        },
                        // ignore: prefer_const_constructors
                        child: Text('scanning'),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF00BFA5), elevation: 20)),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 100, // <-- Your width
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text('$result'),
                        ),
                      ))
                ])))),
      ),
    );
  }
  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#EE3209', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
          if(qrstr=="1"){
            result = "確認";
          }
          print(qrstr);
          print(qrstr);
          print(qrstr);
          print(qrstr);
          print(qrstr);
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}

class ostricaTask3showDialog extends StatefulWidget {
  @override
  _ostricaTask3showDialog createState() => _ostricaTask3showDialog();
}

class _ostricaTask3showDialog extends State<ostricaTask3showDialog> {
  int number = 0, op = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "取消";
  String filename = "123.jpg";

  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    print("2.filename:$filename");
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
                    child: FutureBuilder(
                        future: storage.downloadURL('$filename'),

                        // future: storage.listFiles(),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          if (snapshot.connectionState ==
                                  ConnectionState.done &&
                              snapshot.hasData) {
                            return Container(
                                width: 300,
                                height: 250,
                                child: Image.network(
                                  snapshot.data!,
                                  fit: BoxFit.cover,
                                ));
                          }
                          if (snapshot.connectionState ==
                                  ConnectionState.waiting ||
                              !snapshot.hasData) {
                            return Text("Stupid flutter");
                          }
                          return Text("Stupid flutter");
                        }),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("請上傳照片"),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () async {
                        final results = await FilePicker.platform.pickFiles(
                          allowMultiple: false,
                          type: FileType.custom,
                          allowedExtensions: ['png', 'jpg'],
                        );
                        if (results == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('No file selected'),
                            ),
                          );
                          return null;
                        }
                        final path = results.files.single.path!;
                        final file = "123.jpg";

                        this.setState(() => result = "確認");
                        print("1.filename:$filename");
                        storage.uploadFile(path, filename).then(
                            (value) => this.setState(() => filename = file));
                        // Timer timer;
                        // timer =  new Timer(Duration(milliseconds: 1000), (){});
                      },
                      child: Text('upload file'),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 100, // <-- Your width
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text('$result'),
                        ),
                      ))
                ])))),
      ),
    );
  }

}
