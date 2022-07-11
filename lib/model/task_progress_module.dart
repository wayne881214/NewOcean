import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/firebase/User.dart';
import 'package:newocean/model/task_course_progress_model.dart';
import 'package:newocean/model/task_progress_detail_model.dart';
import 'package:newocean/widget/task/task_dialog/ostrica/ostricaTask2.dart';
import 'package:newocean/widget/task/task_dialog/ostrica/ostricaTask3.dart';
import 'package:newocean/widget/task/task_dialog/ostricaTask_dialog_widget.dart';
import 'package:newocean/widget/task/task_dialog/sealionTask_dialog_widget.dart';
import 'package:newocean/widget/task/task_dialog/whaleTask_dialog_widget.dart';

import '../widget/task/task_dialog/turtleTask_dialog_widget.dart';

class TaskProgressModule extends StatelessWidget {
  final TaskProgressDetailModel module;
  final int State;
  final double StateApi;
  TaskProgressModule(this.module,this.State,this.StateApi);
  @override

  Widget build(BuildContext context) {
    API=StateApi;
  StatefulWidget taskdialog = turtleTask1showDialog();
    if(State>module.state){
      taskdialog = nothingshowDialog();
    }
    else {
      switch (module.id) {
        case 1:
          switch (module.state) {
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
          switch (module.state) {
            case 1:
              taskdialog = sealionTask1showDialog();
              break;
            case 2:
              taskdialog = sealionTask2showDialog();
              break;
            case 3:
              taskdialog = ostricaTask3showDialog();
              break;
            default:
              break;
          }

          break;
        case 3:
          switch (module.state) {
            case 1:
              taskdialog = whaleTask1showDialog();
              break;
            case 2:
              taskdialog = whaleTask2showDialog();
              break;
            case 3:
              taskdialog = ostricaTask3showDialog();
              break;
            default:
              break;
          }
          break;
        case 4:
          switch (module.state) {
            case 1:
              taskdialog = ostricaTask1showDialog();
              break;
            case 2:
              taskdialog = ostricaTask2showDialog();
              break;
            case 3:
              taskdialog = ostricaTask3showDialog();
              break;
            default:
              break;
          }
          break;

        default:
          break;
      }
    }

    return Container(
      height: 280,
      child: Row(
        children: [
          Flexible(flex: 1, child: Container(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: module.iconBorder, width: 2),
                        color: module.iconBg,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(module.icon, size: 30, color: module.iconColor,)),
                  Expanded(
                      child: Column(
                        children:
                        List.generate(20, (index) => Expanded(
                            child: Container(
                              width: 2,
                              color: index % 2 == 0 ? Colors.transparent: module.iconBorder,
                            )
                        )),
                      ))
                ],
              ))),
          Flexible(flex: 5, child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: module.moduleBorder, width: 2),
                color: module.moduleBg,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(module.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kFont.withOpacity(0.7),
                      ),),
                    Icon(Icons.more_horiz,
                      color: kFontLight,)
                  ],
                ),
                SizedBox(height: 5),
                Text(module.desc,
                  style: TextStyle(
                    fontSize: 16,
                    color: module.buttonFont,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 5),
                Row(
                  children: [
                    _buildButton(Icons.access_time_filled, module.time),
                    SizedBox(width: 10,),
                    _buildButton(Icons.bookmarks, module.lesson)
                  ],
                ),
                SizedBox(height: 5),
                ElevatedButton(
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
                  child: Text('開始'),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Container _buildButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: module.buttonColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: module.buttonFont,),
          SizedBox(width: 5,),
          Text(text, style: TextStyle(
              color: module.buttonFont,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}