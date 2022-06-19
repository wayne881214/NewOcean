import 'package:flutter/material.dart';
import 'package:newocean/task_turtle_package/constants/colors.dart';
import 'package:newocean/task_turtle_package/models/module.dart';
import 'package:newocean/task_turtle_package/screens/task_turtle_game/widget/course_module.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('The Progress', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont
              ),),
              Row(
                children: [
                  Image.asset('assets/icons/bell.png', width: 25),
                  SizedBox(width: 15),
                  Image.asset('assets/icons/bell.png', width: 25),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          ...modulesList.map((e) => CourseModule(e)).toList()
          //CourseModule(modulesList[0])
        ],
      ),
    );
  }
}