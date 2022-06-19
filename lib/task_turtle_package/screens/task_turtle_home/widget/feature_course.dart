import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/task_turtle_package/models/course.dart';

import 'package:newocean/task_turtle_package/screens/home/widget/category_title.dart';
import 'package:newocean/task_turtle_package/screens/home/widget/course_item.dart';

class FeatureCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final coursesList = Course.generateCourses();

    return Container(
      child: Column(
        children: [
          CategoryTitle('海龜悽慘的照片', 'view all'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) =>
              CourseItem(coursesList[index]),
              separatorBuilder:
              (BuildContext context, index) => SizedBox(width: 15),
            ),
          )
        ],
      )
    );
  }
}