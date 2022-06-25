// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:newocean/widget/task/task_dialog/ostrica/readQR.dart';

import 'createQR.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
// ignore: sized_box_for_whitespace
      body: SafeArea(
        child: Container(
          color: Colors.blue[200],
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),

                        // ignore: prefer_const_constructors

                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.indigo, width: 10),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          // child: Image.asset(
                          //   'images/image1.png',
                          // ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'SCANNED',
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: Icon(Icons.qr_code),
                      label: Text(
                        'Create QR    ',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (cvx) => createQR()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          shadowColor: Colors.amber),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: Icon(Icons.scanner),
                      label: Text(
                        '    Read QR    ',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (cvx) => scanQR()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          shadowColor: Colors.amber),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     ElevatedButton.icon(
                //       icon: Icon(Icons.perm_device_information),
                //       label: Text(
                //         '      About      ',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       onPressed: () {
                //         Navigator.of(context)
                //             .push(MaterialPageRoute(builder: (cvx) => info()));
                //       },
                //       style: ElevatedButton.styleFrom(
                //           primary: Colors.indigo[900],
                //           shadowColor: Colors.amber),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
