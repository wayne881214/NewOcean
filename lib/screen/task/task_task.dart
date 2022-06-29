import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:newocean/screen/task/task_issue.dart';
import 'package:newocean/screen/task/task_question.dart';
import 'package:newocean/widget/task/active_course.dart';
import 'package:newocean/widget/task/emoji_Title.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/widget/task/task_issue/course_progress.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../widget/task/task_issue/task_progress.dart';

class Task_task extends StatefulWidget {
  Task_task({Key? key, required this.id}) : super(key: key);
  final int id;
  _Task_task createState() => _Task_task();
}

class _Task_task extends State<Task_task>{

  String taskTitle='';
  String issuetext='';
  String featuretext='';
  int Percent=0;


  @override
  void initState() {
    switch(widget.id){
      case 1:
        taskTitle="海龜任務";
        break;
      case 2:
        taskTitle="海獅任務";
        break;
        case 3:
        taskTitle="鯨魚任務";
        break;
        case 4:
        taskTitle="牡蠣任務";
        break;
      default:
        taskTitle="海鳥任務";
        break;

    }
    getPercent();
    // //讀取用戶任務，將進行中的任務加入List<Task>行列
    // DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/task');
    // Ref.onChildAdded.listen((event) {
    //   int id= (event.snapshot.value as Map)["id"];
    //   int state= (event.snapshot.value as Map)["state"];
    //   // int state= (event.snapshot.value as Map)["state"];
    //   if(id==widget.id) {
    //     setState(() {
    //       Percent =((state-1)*100/3).ceil();//更新 TaskCard Widget(任務卡片列表)
    //     });
    //   }
    // });
    // super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$taskTitle'),
        centerTitle: true,
        backgroundColor: Color(0xFF00BFA5),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TaskProgress(),
            emoji_Title(name:"任務列表"),
            Center(
            child:CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 20.0,
              percent: Percent/100,
              center: Text('$Percent%',
                style: TextStyle(fontWeight: FontWeight.bold),),
              progressColor: kAccent,
            )
            ),
            ActiveCourse(id:widget.id,number:1),
            ActiveCourse(id:widget.id,number:2),
            ActiveCourse(id:widget.id,number:3),
          ],),
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),
    );
  }
  void _onItemTapped(int index) {
    if(index==0) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Task_issue(id: widget.id)));
    }
    if(index==2) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Task_question(id: widget.id,)));
    }
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
              child: Text('議題', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                  Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text('任務', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                  Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text('問答', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
      ],
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  void getPercent() {
    var Target=1+7+7;
    int state= 0;
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/log');
    Ref.onChildAdded.listen((event)  async{
      Map userLogValue = (event.snapshot.value as Map);
      print("jsonResponse!!!!! $userLogValue");
      if(userLogValue["task"]==widget.id){
        state++;
      }
      setState(() {
        Percent =((state/Target)*100).toInt().ceil();//更新 TaskCard Widget(任務卡片列表)
      });
    });
    //讀取用戶任務，將進行中的任務加入List<Task>行列
    // DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/task');
    // Ref.onChildAdded.listen((event) {
    //   int id= (event.snapshot.value as Map)["id"];
    //   int state= (event.snapshot.value as Map)["state"]+10;
    //   // int state= (event.snapshot.value as Map)["state"];
    //   if(id==widget.id) {
    //     setState(() {
    //       Percent =((state)).ceil();//更新 TaskCard Widget(任務卡片列表)
    //     });
    //   }
    // });
    super.initState();
  }
}
