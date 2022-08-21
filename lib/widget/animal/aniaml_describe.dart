import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/cupertino.dart';

class Animal_describe extends StatefulWidget {
  Animal_describe({Key? key, required this.site, required this.food , required this.describe}) : super(key: key);
  final String site;
  final String food;
  final String describe;
  @override
  _describeState createState() => _describeState();
}

class  _describeState extends State<Animal_describe> {
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
        color: Color(0XFF00AEAE),
        margin: const EdgeInsets.only(top:5,left:20,right:20,bottom:5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: SizedBox(
          width: 400,
          height:150,
          child:Padding(
              padding: EdgeInsets.all(16.0),
              child:Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("棲息地:${widget.site}",style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold))),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("食　物:${widget.food}",style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold))),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("特　性:${widget.describe}",style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold))),
           ]
           )
          ),
      ),
      )
    );
  }
}