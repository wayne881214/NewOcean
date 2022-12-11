import 'package:flutter/material.dart';
import '../../../model/task_model/task_progress_detail_model.dart';
import '../../../model/task_model/task_progress_module.dart';


class TaskProgress extends StatelessWidget {
  TaskProgress({Key? key, required this.id, required this.state, required this.StateApi}) : super(key: key);
  final int id;
  final int state;
  final double StateApi;
  int Percent=0;

  @override
  Widget build(BuildContext context) {
    final modulesList = TaskProgressDetailModel.generateModules(id);
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  Text('任務進度列表', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: kFont
                  )
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/process.png', width: 20),
                  SizedBox(width: 15),
                  Image.asset('assets/icons/combine.png', width: 25),
                ],
              )
            ],
          ),*/
          SizedBox(height: 20,),
          ...modulesList.map((e) => TaskProgressModule(e,state,StateApi)).toList()
          //CourseModule(modulesList[0])
        ],
      ),
    );
  }
}