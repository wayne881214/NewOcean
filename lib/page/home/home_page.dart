import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widget/navigation_drawer_widget.dart';
import '../tasks/screen/task_issue.dart';

Map Animals =  <int, String>{1:"turle",2:"sealion",3:"whale",4:"ostrica",5:"jellyfish",6:"hippocampus",7:"coral"};
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int money = -2;
  String word = "救救我!!!";
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
                word = "嘿，牡蠣要長大也是需要好的環境的!";
                break;
              case 1:
                word = "嗚嗚嗚~吸管卡在鼻子好痛!";
                break;
              case 2:
                word = "嗚嗚嗚~幫我收集塑膠垃圾!";
                break;
              case 3:
                word = "嗚嗚嗚~海洋還是好多";
                break;
              case 4:
                word = "救救我!!!";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 5:
            switch(state) {
              case 0:
                word = "救救我!!!";
                break;
              case 1:
                word = "救救我!!!";
                break;
              case 2:
                word = "救救我!!!";
                break;
              case 3:
                word = "救救我!!!";
                break;
              case 4:
                word = "救救我!!!";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 6:
            switch(state) {
              case 0:
                word = "救救我!!!";
                break;
              case 1:
                word = "救救我!!!";
                break;
              case 2:
                word = "救救我!!!";
                break;
              case 3:
                word = "救救我!!!";
                break;
              case 4:
                word = "救救我!!!";
                break;
              default:
                word = "現在海洋很和平~";
                break;

            }
            break;
          case 7:
            switch(state) {
              case 0:
                word = "救救我!!!";
                break;
              case 1:
                word = "救救我!!!";
                break;
              case 2:
                word = "救救我!!!";
                break;
              case 3:
                word = "救救我!!!";
                break;
              case 4:
                word = "救救我!!!";
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
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.plus_one),
            //   color: Colors.teal,
            // ),
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
                    context, MaterialPageRoute(builder: (context) => Task_issue(id:1)));
              }),
              Text('$word',style: TextStyle(color: Colors.red, fontSize: 27,)),
              Image.asset('assets/images/animals/'+ animal+ '.png'),
            ],
          ),
        ),
      );
}
