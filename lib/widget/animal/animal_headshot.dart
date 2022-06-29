import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newocean/model/animal_model.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/cupertino.dart';

class Animal_headshot extends StatefulWidget {
  Animal_headshot({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  _headshotState createState() => _headshotState();
}

class  _headshotState extends State<Animal_headshot> {
  /// 是否已经显示摇一摇弹窗。
  @override
  void initState() {
    setState(() {
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Card(
        elevation: 0,
        color: Colors.white,
        margin: const EdgeInsets.only(top:30,left:5,right:5,bottom:15),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 10.0,
            color: Color(0xFF8F8F8F),
          ),
          borderRadius: BorderRadius.all(Radius.circular(180)),
        ),
        child: SizedBox(
          width: 350,
          height:350,
          child: ClipOval(
              child: Image.asset(widget.img, height: 150.00, width: 150.00)),
        ),
      ),
    );
  }
}