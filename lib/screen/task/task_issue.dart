import 'package:flutter/material.dart';
import 'package:newocean/screen/shake.dart';
import 'package:newocean/screen/task/task_question.dart';
import 'package:newocean/screen/task/task_task.dart';
import 'package:newocean/widget/task/emoji_Title.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/widget/task/task_issue/feature_course.dart';
import 'package:newocean/widget/task/task_issue/issue_style.dart';
import 'package:newocean/screen/test.dart';

class Task_issue extends StatefulWidget {
  Task_issue({Key? key, required this.id}) : super(key: key);
  final int id;
  _Task_issue createState() => _Task_issue();
}

class _Task_issue extends State<Task_issue> {
  String taskTitle = '';
  String issuetext = '';
  String featuretext = '';

  @override
  void initState() {
    switch (widget.id) {
      case 1:
        taskTitle="海龜任務";
        issuetext='2015年，海龜保育團體The leatherback Trust的研究員在哥斯大黎加海域發現一隻鼻孔裡有異物的欖蠵龜，但由於船上沒有專業器材，離岸邊又有好幾個小時的航程，只好使用瑞士刀為欖蠵龜動手術。經過一番掙扎，用鉗子拔出來之後，發現吸管長達 15 公分。這麼長的吸管從鼻孔插入、嵌在呼吸道組織也不知道有多久了。'
            '儘管海龜保育團體能夠幫忙海龜移除這些塑膠吸管，但仍然還有無數的海洋動物吃下了人們丟在海洋中的塑膠垃圾。因此大家必須一起努力去減少使用、重複使用或者是回收這些塑膠製品，這樣子才能減少海洋生物的危害。\n';
        featuretext='海龜保育團體發現一隻欖蠵龜';
        break;
      case 2:
        taskTitle = "海獅任務";
        issuetext = '海獅的任務說明\n';
        featuretext = '海獅悽慘的照片';
        break;
      case 4:
        taskTitle = "牡蠣任務";
        issuetext =
            '隨著溫室效應而來的海水均溫升高、酸化，更直接衝擊台灣最具優勢的養殖業，尤其是牡蠣。原本中秋前後排精卵的生態大亂，隨時消耗能量排精卵的結果，導致牡蠣變「瘦」、附著率大減。\n';
        featuretext = '牡蠣悽慘的照片';
      break;
      case 3:
        taskTitle="鯨魚";
        issuetext='船舶噪音會產生海洋噪音，高強度噪音影響鯨魚的聽力，導致仰賴聲音溝通的鯨魚受困於岸上無法自行游回大海，擱淺的鯨魚容易因日曬嚴重脫水而死亡。\n';
        featuretext='鯨魚擱淺的照片';
        break;
      default:
        taskTitle = "海鳥任務";
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
            IssueStyle('$issuetext', 'view all\n'),
            FeatureCourse(id:widget.id,name:featuretext),
            //emoji_Title(name:"知識問答"),
          ],),
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),
    );
  }

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Task_task(id: widget.id)));
    }
    if(index==2) {
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
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text(
                '任務',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
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
