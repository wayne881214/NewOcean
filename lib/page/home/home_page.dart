import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widget/navigation_drawer_widget.dart';
import '../tasks/screen/task_issue.dart';

Map Animals =  <int, String>{1:"turtle",2:"sealion",3:"whale",4:"ostrica",5:"jellyfish",6:"hippocampus",7:"coral"};
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int money = -2;
  String word = "救救我!!!";
  int animalsId = 0;
  int state = 0;
  int level = 1;
  int i = Random().nextInt(7) + 1;
  String animal ="";

  void initState() {
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    setState(() {
      animal = Animals[i];
    });

    DatabaseReference sRef = FirebaseDatabase.instance.ref('Tasks/$currentUser');
    sRef.onChildAdded.listen((event) {
      int id = (event.snapshot.value as Map)["id"];
      int states = (event.snapshot.value as Map)["state"];
      setState(() {
      animalsId = id;
      if (states == 4) {
          level++;
      }
      if( id == i){
        state = states;
        switch(id){
          case 1:
            switch(state) {
              case 0:
                word = "可惡的人類! 不要搭理我!";
                break;
              case 1:
                word ="你看這麼多吸管傷害了我的同胞!";
                break;
              case 2:
                word = "哼，海洋還是有很多塑膠垃圾!";
                break;
              case 3:
                word = "看來你還是人類中有良心的\n就是不知道會不會半途而廢";
                break;
              case 4:
                word = "哼，你勉強獲得我海龜一族的友誼";
                break;
              default:
                word = "現在海洋很和平~";
                break;
            }
            break;
          case 2:
            switch(state) {
              case 0:
                word = "海獅是人類最好的朋友\n但看來你們不這樣認為!";
                break;
              case 1:
                word = "人類，為什麼要用漁網套你們朋友";
                break;
              case 2:
                word = "朋友，我們海獅是不吃塑膠袋";
                break;
              case 3:
                word = "嘿，朋友，塑膠不是一天不用就消失的";
                break;
              case 4:
                word = "嘿，好朋友，謝啦";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 3:
            switch(state) {
              case 0:
                word = "我怎麼來到人類的岸邊了\n我同胞跟我說人類都很危險";
                break;
              case 1:
                word = "噪音太多了\n我找不到族群的方向";
                break;
              case 2:
                word = "人類，我的聲納被你們干擾了";
                break;
              case 3:
                word = "環保商店在哪?\n你們人類沒有聲納呢?";
                break;
              case 4:
                word = "看來人類也沒這麼壞呀";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 4:
            switch(state) {
              case 0:
                word = "嘿，你們吃我就算了\n還欺人太甚不讓我成長";
                break;
              case 1:
                word = "還不快幫我建立長大的環境";
                break;
              case 2:
                word = "海洋越差\n我是你吃不起的牡蠣大人~!";
                break;
              case 3:
                word = "動作太慢了\n我身價又又飆漲了";
                break;
              case 4:
                word = "嘿，人類打個商量\n不要吃我好嗎";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 5:
            switch(state) {
              case 0:
                word = "呼呼。人類太棒啦\n這裡是我水母的天下啦";
                break;
              case 1:
                word = "別阻擋我\n我要讓水母一族成為海賊王";
                break;
              case 2:
                word = "人類你別自以為了\n現在做環保能擋下我的腳步嗎";
                break;
              case 3:
                word = "哼，反正你總有一天會放棄\n水母帝國總將會復活的";
                break;
              case 4:
                word = "(舉白旗投降)\n算你贏了，人類";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 6:
            switch(state) {
              case 0:
                word = "臭人類!滾滾滾!";
                break;
              case 1:
                word = "臭人類!滾!";
                break;
              case 2:
                word = "臭人類!算你有進步!";
                break;
              case 3:
                word = "人類~別退步了!";
                break;
              case 4:
                word = "人類~ ♡";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 7:
            switch(state) {
              case 0:
                word = "(Ò 皿 Ó ╬)";
                break;
              case 1:
                word = "(ꐦಠ皿ಠ)";
                break;
              case 2:
                word = "(¬▂¬)";
                break;
              case 3:
                word = "(-`д´-)";
                break;
              case 4:
                word = "(⁎˃ᆺ˂)";
                break;
              default:
                word = "現在海洋很和平~";
                break;
            }
            break;
          default:
            break;
        }
      }
      });
    });

    DatabaseReference Ref =
        FirebaseDatabase.instance.ref('Money/' + currentUser + '/');
    Ref.onChildAdded.listen((event) async {
      this.setState(() => money = (event.snapshot.value as int));
    });
    super.initState();
  }

  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('LV:'+level.toString(), style: TextStyle(color: Colors.teal)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: ImageIcon(new AssetImage('assets/icons/hamburger.png'),
                    color: Colors.teal),
              );
            },
          ),
          actions: [
            Image.asset('assets/icons/diamond_icon.png', width: 30),
            Text('$money',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 27,
                )),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
              icon: const Icon(Icons.info_outline),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task_issue(id:animalsId)));
              }),
              Text('$word',textAlign: TextAlign.center,style: TextStyle(color: Colors.red, fontSize: 27,)),
              Image.asset('assets/images/animals/'+ animal+ '.png'),
            ],
          ),
        ),
      );
}
