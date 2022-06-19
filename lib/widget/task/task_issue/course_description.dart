import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/model/task_course_model.dart';


class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(course.authorImg, width: 20,),
              SizedBox(width: 5),
              Text(course.author, style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: kFontLight,
                  shape: BoxShape.circle
                )
              ),
              Icon(Icons.access_time_filled, size: 20, color: kAccent,),
              SizedBox(width: 5,),
              Text('1h 35 min', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kFont,
              ),)
            ],
          ),
          SizedBox(height: 15),
          Text(course.title, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kFont,
          ),),
          SizedBox(height: 15),
          Text('海洋生物學家在哥斯大黎加發現一隻海龜的鼻孔裡卡了一小節吸管。經過一番掙扎，用鉗子拔出來之後，發現吸管長達 15 公分。這麼長的吸管從鼻孔插入、嵌在呼吸道組織也不知道有多久了。\n',
            style: TextStyle(
              wordSpacing: 2,
              fontSize: 16,
              color: kFontLight,
            ), )
        ],
      ),
    );
  }
}