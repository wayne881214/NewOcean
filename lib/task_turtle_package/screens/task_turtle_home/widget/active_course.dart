import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/task_turtle_package/constants/colors.dart';
import 'package:newocean/task_turtle_package/screens/detail/widget/detail.dart';
import 'package:newocean/task_turtle_package/screens/home/widget/category_title.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants/colors.dart';

class ActiveCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('任務進度', '60%'),
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(
               color: kFontLight.withOpacity(0.3), width: 1
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/shake.png', width: 60),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '搖手機挑戰',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kFont
                          ),
                        ),
                        Text(
                          '遊戲進度',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kFontLight
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 25),
                    Positioned(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: kAccent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage()));
                        },
                        child: Text('Start'),
                      ),
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.60,
                  center: Text('60%',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  progressColor: kAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}