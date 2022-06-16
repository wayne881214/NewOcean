import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:newocean/model/task_model.dart';
import 'package:newocean/widget/task_card_widget.dart';

class TasksPage extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

//建立 Task(Model) List (任務卡片模型列表)
//model/task_model.dart
List<Task> task = [];

class _TaskState extends State<TasksPage> {
  //生成 TaskCard Widget (任務卡片列表)
  //widget/task_card_widget.dart
  StatelessWidget card = TaskCard_Peter(data:task);

  @override
  //初始化
  void initState() {
    task=[];
    //讀取用戶任務，將進行中的任務加入List<Task>行列
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/task');
    Ref.onChildAdded.listen((event) {
      int id= (event.snapshot.value as Map)["id"];
      int state= (event.snapshot.value as Map)["state"];
      if(state==1) {
        task.add(Task.addTask(id));
      }
      //更新 TaskCard Widget(任務卡片列表)
      setState(() {
        card = TaskCard_Peter(data:task);
      });
    });
  }
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Tasks'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
        ),
        body:
        card,
      );
}



