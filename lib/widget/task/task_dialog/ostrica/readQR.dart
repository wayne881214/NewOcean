// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, duplicate_ignore, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// ignore: camel_case_types, must_be_immutable
class scanQR extends StatefulWidget {

    var qrstr = "let's scanned";

  @override
  State<scanQR> createState() => _scanQRState();
}

class _scanQRState extends State<scanQR> {
  var qrstr = "let's scanned";
  var hiegh, widt;
  // ignore: annotate_overrides
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    widt = MediaQuery.of(context).size.width;
    hiegh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        // ignore: prefer_const_constructors
        title: Text('Read QR Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(qrstr,
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                )),
            // ignore: prefer_const_constructors
            Icon(
              Icons.qr_code_scanner,
              size: 200.0,
              color: Colors.blue,
            ),
            ElevatedButton(
                onPressed: () {
                  scanQR();
                },
                // ignore: prefer_const_constructors
                child: Text('scanning'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], elevation: 20)),
            SizedBox(
              width: hiegh,
            )
          ],
        ),
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#EE3209', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
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
