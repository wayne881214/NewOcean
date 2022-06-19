import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/model/task_course_model.dart';
import 'package:newocean/widget/task/task_issue/course_description.dart';
import 'package:newocean/widget/task/task_issue/course_progress.dart';
import 'package:newocean/widget/task/task_issue/custom_app_bar.dart';

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