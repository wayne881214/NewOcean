import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:newocean/model/task_model.dart';
import 'package:newocean/widget/task/task_card_widget.dart';

import '../constants/colors.dart';

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
  TaskCard card = TaskCard(data: task);
  @override
  //初始化
  void initState() {
    List stateApi = [
      {"targat": -1, "state": -1, "percent": -1},
      {"targat": 11, "state": 0.00, "percent": 0},
      {"targat": 11, "state": 0.00, "percent": 0},
      {"targat": 11, "state": 0.00, "percent": 0},
      {"targat": 11, "state": 0.00, "percent": 0}
    ];

    DatabaseReference Ref_log = FirebaseDatabase.instance.ref('User/1/log');
    Ref_log.onChildAdded.listen((event) {
      Map userLogValue = (event.snapshot.value as Map);
      print("jsonResponse!!!!! $userLogValue");
      setState(() {
        int taskId=userLogValue["task"];
        stateApi[taskId]["state"]++;
        stateApi[taskId]["percent"]=(stateApi[taskId]["state"]/stateApi[taskId]["targat"])*100;
      });
    });
    task = [];
    //讀取用戶任務，將進行中的任務加入List<Task>行列
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/task');
    Ref.onChildAdded.listen((event) {
      int id = (event.snapshot.value as Map)["id"];
      int state = (event.snapshot.value as Map)["state"];
      if (state <= 4) {
        print("PPPPPPPP $stateApi");
        task.add(Task.addTask2(id, state,stateApi[id]));
      }
      //更新 TaskCard Widget(任務卡片列表)
      setState(() {
        card = TaskCard(data: task);
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('任務'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: card,
        bottomNavigationBar: _buildBottomNaigationBar(),
      );


  void _onItemTapped(int index) {
      task=[];
      DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/task');
      Ref.onChildAdded.listen((event) {
        int id= (event.snapshot.value as Map)["id"];
        int state= (event.snapshot.value as Map)["state"];
        if(index==0&&state<=4) {
          task.add(Task.addTask(id,state));
        }
        if(index==1&&state<=3&&state>=1) {
          task.add(Task.addTask(id,state));
        }
        if (index==2&&state == 4) {
          task.add(Task.addTask(id, state));
        }
        //更新 TaskCard Widget(任務卡片列表)
        setState(() {
          card = TaskCard(data:task);
        });
      });
  }

  BottomNavigationBar _buildBottomNaigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                  Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text('全部', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text(
                '進行中', style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                  Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text('已完成', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
      ],
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
