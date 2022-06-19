import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/model/task_course_progress_model.dart';
import 'package:newocean/widget/task/task_issue/course_module.dart';


class CourseProgress extends StatelessWidget {
  final modulesList = Progress.generateModules();


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