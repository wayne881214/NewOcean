import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/cupertino.dart';

class Animal_interact extends StatefulWidget {
  Animal_interact({Key? key, required this.state}) : super(key: key);
  final int state;
  @override
  _interactState createState() => _interactState();
}

class  _interactState extends State<Animal_interact> {
  @override
  void initState() {
    setState(() {
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
        children:[
          Card(
            elevation: 0,
            color: Colors.white,
            margin: const EdgeInsets.only(top:25,left:15,right:15,bottom:5),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 5.0,
                color: Color(0xFF8F8F8F),
              ),
              borderRadius: BorderRadius.all(Radius.circular(180)),
            ),
            child: SizedBox(
              width: 100,
              height:100,
              child: ClipOval(
                  child: Image.asset("assets/images/animals/lock.png", height: 100.00, width: 100.00)),
            ),
          ),
          Card(
            elevation: 0,
            color: Colors.white,
            margin: const EdgeInsets.only(top:25,left:15,right:15,bottom:5),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 5.0,
                color: Color(0xFF8F8F8F),
              ),
              borderRadius: BorderRadius.all(Radius.circular(180)),
            ),
            child: SizedBox(
              width: 100,
              height:100,
              child: ClipOval(
                  child: Image.asset("assets/images/animals/lock.png", height: 100.00, width: 100.00)),
            ),
          ),
          Card(
            elevation: 0,
            color: Colors.white,
            margin: const EdgeInsets.only(top:25,left:15,right:15,bottom:5),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 5.0,
                color: Color(0xFF8F8F8F),
              ),
              borderRadius: BorderRadius.all(Radius.circular(180)),
            ),
            child: SizedBox(
              width: 100,
              height:100,
              child: ClipOval(
                  child: Image.asset("assets/images/animals/lock.png", height: 100.00, width: 100.00)),
            ),
          ),
        ]
      )
    );
  }
}