import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/model/task_model/task_course_model.dart';
import 'package:newocean/widget/task/task_issue/course_item.dart';
import 'category_style.dart';

class FeatureCourse extends StatefulWidget {
  FeatureCourse({Key? key, required this.name, required this.id}) : super(key: key);
  final int id;
  final String name;
  _FeatureCourse createState() => _FeatureCourse();
}
class _FeatureCourse extends State<FeatureCourse> {
  @override
  Widget build(BuildContext context) {
    final coursesList = Course.generateCourses(widget.id);
    return Container(
        child: Column(
          children: [
            CategoryStyle('${widget.name}', 'view all'),
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