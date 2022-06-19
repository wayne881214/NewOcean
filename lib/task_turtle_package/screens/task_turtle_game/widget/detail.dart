import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/task_turtle_package/models/course.dart';
import 'package:newocean/task_turtle_package/screens/task_turtle_game/widget/course_description.dart';
import 'package:newocean/task_turtle_package/screens/task_turtle_game/widget/course_progress.dart';
import 'package:newocean/task_turtle_package/screens/task_turtle_game/widget/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDescription(course),
            CourseProgress()
          ],
        ),
      ),
    );
  }
}