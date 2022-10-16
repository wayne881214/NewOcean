import 'package:flutter/material.dart';
import 'package:newocean/page/tasks/screen/task_question.dart';
import 'package:newocean/page/tasks/screen/task_task.dart';
import 'package:newocean/widget/task/emoji_Title.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/widget/task/task_issue/feature_course.dart';
import 'package:newocean/widget/task/task_issue/issue_style.dart';
import 'package:readmore/readmore.dart';

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
        issuetext='2015年，海龜保育團體The Leatherback Trust的研究員在哥斯大黎加海域發現一隻鼻孔裡有異物的欖蠵龜，但由於船上沒有專業器材，離岸邊又有好幾個小時的航程，只好使用瑞士刀為欖蠵龜動手術。經過一番掙扎，用鉗子拔出來之後，發現吸管長達15公分。這麼長的吸管從鼻孔插入、嵌在呼吸道組織也不知道有多久了。'
            '儘管海龜保育團體能夠幫忙海龜移除這些塑膠吸管，但仍然還有無數的海洋動物吃下了人們丟在海洋中的塑膠垃圾。因此大家必須一起努力去減少使用、重複使用或者是回收這些塑膠製品，這樣子才能減少海洋生物的危害。\n';
        featuretext='海龜保育團體發現一隻欖蠵龜';
        break;
      case 2:
        taskTitle = "海獅任務";
        issuetext = '塑膠垃圾從陸地流入海洋，已經造成嚴重的生態危機，除了垃圾沉積在海底汙染環境外，許多垃圾碎片也經常卡在海洋生物身上，往往釀成悲劇。海獅會被棄置的漁具、繩子或塑膠圈纏繞，當牠們的身體不斷長大時，亦會被身上纏繞的垃圾愈纏愈緊，除了對其活動或成長形成障礙之外，亦會影響其呼吸系統，最終令牠們窒息而死。2018 年科學團隊調查魚線與漁網污染對納米比亞地區海獅的影響，該研究表明，大量動物幼崽受到響被漁線纏繞在脖子上。纏繞率大約為每500隻動物中有1隻。\n';
        featuretext = '海獅被漁具、繩子或塑膠圈纏繞';
        break;
      case 4:
        taskTitle = "牡蠣任務";
        issuetext =
            '隨著溫室效應而來的海水均溫升高、酸化，更直接衝擊台灣最具優勢的養殖業，尤其是牡蠣。原本中秋前後排精卵的生態大亂，隨時消耗能量排精卵的結果，導致牡蠣變「瘦」、附著率大減。\n';
        featuretext = '牡蠣悽慘的照片';
      break;
      case 5:
        taskTitle="GPS";
        issuetext='GPS會產生海洋噪音，高強度噪音影響鯨魚的聽力，導致仰賴聲音溝通的鯨魚受困於岸上無法自行游回大海，擱淺的鯨魚容易因日曬嚴重脫水而死亡。\n';
        featuretext='GPS擱淺的照片';
        break;
      case 6:
        taskTitle="海馬";
        issuetext='海馬會用尾巴抓住漂浮的物體，並隨著洋流移動。一隻小小的管海馬漂浮在靠近印尼松巴哇島大松巴哇的汙染水域。這張照片具有諷喻的作用，提醒我們關心海洋目前與未來的狀態。\n';
        featuretext='海馬撿垃圾的照片';
        break;
      case 7:
        taskTitle="珊瑚";
        issuetext='一些海洋垃圾如漁網或塑膠袋等會在珊瑚上覆蓋或纏繞，阻礙了珊瑚進行光合作用繼而使珊瑚無法吸收陽光及氧氣因而死亡。而且塑膠垃圾更有機會攜帶病菌，也進一步加劇珊瑚礁的死去。\n';
        featuretext='珊瑚白化的照片';
        break;
      case 8:
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

            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  emoji_Title(name:"環境議題"),
                  ReadMoreText(
                    issuetext,
                    trimLines: 10,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " 顯示更多 ",
                    trimExpandedText: " 顯示更少 ",
                    lessStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            FeatureCourse(id:widget.id,name:featuretext),
            //emoji_Title(name:"知識問答"),
          ],),
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),
    );
  }

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Task_task(id: widget.id)));
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
