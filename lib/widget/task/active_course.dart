import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/model/task_model.dart';

import 'package:newocean/widget/task/task_issue/category_style.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:newocean/widget/task/task_dialog/turtleTask_dialog_widget.dart';
import 'package:newocean/widget/task/task_dialog/sealionTask_dialog_widget.dart';
import '../../screen/shake.dart';
class ActiveCourse extends StatefulWidget {
  ActiveCourse({Key? key, required this.id, required this.number}) : super(key: key);
  final int id;
  final int number;

  _ActiveCourse createState() => _ActiveCourse();
}
class _ActiveCourse extends State<ActiveCourse> {
  @override
  Task task=Task.addTask(1,1);
  StatefulWidget taskdialog=turtleTask1showDialog();
  void initState() {
    task=Task.addTask(widget.id,widget.number);
    switch(widget.id){
      case 1:
        switch(widget.number) {
        case 1:
        taskdialog = turtleTask1showDialog();
        break;
        case 2:
        taskdialog = turtleTask2showDialog();
        break;
        case 3:
        taskdialog = turtleTask3showDialog();
        break;
        default:
        break;
        }
        break;
      case 2:
        switch(widget.number) {
          case 1:
            taskdialog = sealionTask1showDialog();
            break;
          case 2:
            taskdialog = sealionTask2showDialog();
            break;
          case 3:
            taskdialog = sealionTask3showDialog();
            break;
          default:
            break;
        }
        break;
      default:
        break;

    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryStyle('任務進度', '60%'),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${task.mission}',
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
                          showDialog<bool>(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) =>taskdialog,
                          ).then((onValue) {
                            if (onValue != null) {
                              // 点击确定后返回的业务逻辑。
                            }
                          });
                        },
                        child: Text('Start'),
                      ),
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 30.0,
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