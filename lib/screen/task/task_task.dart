import 'package:flutter/material.dart';
import 'package:newocean/screen/shake.dart';
import 'package:newocean/screen/task/task_issue.dart';
import 'package:newocean/widget/task/active_course.dart';
import 'package:newocean/widget/task/emoji_Title.dart';
import 'package:newocean/constants/colors.dart';

class Task_task extends StatefulWidget {
  Task_task({Key? key, required this.id}) : super(key: key);
  final int id;
  _Task_task createState() => _Task_task();
}
class _Task_task extends State<Task_task>{
  String taskTitle='';
  String issuetext='';
  String featuretext='';

  @override
  void initState() {
    switch(widget.id){
      case 1:
        taskTitle="海龜任務";
        break;
      case 2:
        taskTitle="海獅任務";
        break;
        //case 3:
        taskTitle="海龜任務";
        break;
        //case 4:
        taskTitle="海龜任務";
        break;
      default:
        taskTitle="海鳥任務";
        break;

    }
    super.initState();
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
            emoji_Title(name:"任務列表"),
            ActiveCourse(id:widget.id,number:1),
            ActiveCourse(id:widget.id,number:2),
            ActiveCourse(id:widget.id,number:3)
          ],),
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),
    );
  }
  void _onItemTapped(int index) {
    if(index==0) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Task_issue(id: widget.id)));
    }
    if(index==2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => shake()));
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

}
