import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/model/task_model.dart';
import 'package:newocean/screen/mission.dart';
class TaskCard extends StatelessWidget {
  TaskCard({Key? key, required this.data}) : super(key: key);
  final List<Task> data;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: data.map((value) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF00BFA5),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child:  SizedBox(
            width: 300,
            height: 100,
            child: Center(child:Text(value.imagePath)),
          ),
        );
      }).toList(),
    );
  }
}



class TaskCard_Peter extends StatelessWidget {
  TaskCard_Peter({Key? key, required this.data}) : super(key: key);
  final List<Task> data;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: data.map((value) {
        //偵測點擊跳轉(mission介面)
        return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => mission( id:1),
                  )
              );
            },
        //生成Task Card(任務卡片)
        child :Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF00BFA5),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child:  SizedBox(
            width: 300,
            height: 100,
            child: Center(child:Text(value.imagePath)),
          ),
        )
        );
      }).toList(),
    );
  }
}
