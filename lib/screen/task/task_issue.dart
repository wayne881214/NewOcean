import 'package:flutter/material.dart';
import 'package:newocean/screen/shake.dart';
import 'package:newocean/screen/task/task_task.dart';
import 'package:newocean/widget/task/emoji_Title.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/widget/task/task_issue/feature_course.dart';
import 'package:newocean/widget/task/task_issue/issue_style.dart';

class Task_issue extends StatefulWidget {
  Task_issue({Key? key, required this.id}) : super(key: key);
  final int id;
  _Task_issue createState() => _Task_issue();
}
class _Task_issue extends State<Task_issue>{
  String taskTitle='';
  String issuetext='';
  String featuretext='';

  @override
  void initState() {
    switch(widget.id){
      case 1:
        taskTitle="海龜任務";
        issuetext='海洋生物學家在哥斯大黎加發現一隻海龜的鼻孔裡卡了一小節吸管。經過一番掙扎，用鉗子拔出來之後，發現吸管長達 15 公分。這麼長的吸管從鼻孔插入、嵌在呼吸道組織也不知道有多久了。\n';
        featuretext='海龜悽慘的照片';
        break;
      case 2:
        taskTitle="海獅任務";
        issuetext='海獅的任務說明\n';
        featuretext='海獅悽慘的照片';
        break;
      case 3:
        taskTitle="鯨魚";
        issuetext='船舶噪音會產生海洋噪音，高強度噪音影響鯨魚的聽力，導致仰賴聲音溝通的鯨魚受困於岸上無法自行游回大海，擱淺的鯨魚容易因日曬嚴重脫水而死亡。\n';
        featuretext='鯨魚擱淺的照片';
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
            emoji_Title(name:"環境議題"),
            IssueStyle('$issuetext', 'view all'),
            FeatureCourse(id:widget.id,name:featuretext),
            emoji_Title(name:"知識問答"),
          ],),
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),
    );
  }
  void _onItemTapped(int index) {
    if(index==1) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Task_task(id:widget.id)));
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
              child: Text('介紹', style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text('其他', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
      ],
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

}
