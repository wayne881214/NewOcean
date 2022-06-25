// ignore: duplicate_ignore
// ignore_for_file: file_names, camel_case_types, duplicate_ignore


import 'package:barcode_widget/barcode_widget.dart';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class createQR extends StatefulWidget {
  
  @override
  State<createQR> createState() => _createQRState();
}

class _createQRState extends State<createQR> {
  var qrstr = 'add data';

    // final AdWidget adWidget4 = AdWidget(ad: AdHelper3.myBanner);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Creating QR Code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(
            data: qrstr,
            barcode: Barcode.qrCode(),
            color: Colors.blue,
            height: 250,
            width: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 8,
            child: TextField(
                maxLength: 50,
                decoration: InputDecoration(
                    hintText: 'Enter your data here',
                    // ignore: prefer_const_constructors
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blue[900],
                    // ignore: prefer_const_constructors
                    border: OutlineInputBorder(
                        borderSide:
                            // ignore: prefer_const_constructors
                            BorderSide(color: Colors.blue, width: 2))),
                onChanged: (value) {
                  qrstr = value;
                }),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          

        ],
      ),
    );
  }


}



