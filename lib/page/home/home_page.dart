import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/page/sign_in_up/authentication_service.dart';
import 'package:provider/provider.dart';
import '../../firebase/log_service.dart';
import '../../firebase/store_service.dart';
import '../../model/achievements_model/achievement_model.dart';
import '../../model/achievements_model/logs_model.dart';
import '../../widget/achievements/loglist_view.dart';
import '../../widget/navigation_drawer_widget.dart';
import '../achievements/achievements_page.dart';
import '../map/map_video.dart';
import '../map/show_map_page.dart';
import '../store/storeHomepage.dart';
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
    DatabaseReference TaskRef =
        FirebaseDatabase.instance.ref('Tasks/$currentUser/task'+i.toString());

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
        if(id == 1) {
          if (state == 0) {
            word = "救救我!!!";
          } else if (state == 1) {
            word = "嗚嗚嗚~吸管卡在鼻子好痛!";
          } else if (state == 2) {
            word = "嗚嗚嗚~在幫我一次!";
          } else if (state == 3) {
            word = "嗚嗚嗚~謝謝你!";
          } else {
            word = "現在海洋好乾淨~";
          }
        }else if(id == 2){
          if (state == 0) {
            word = "救救我!!!";
          } else if (state == 1) {
            word = "嗚嗚嗚~吸管卡在鼻子好痛!";
          } else if (state == 2) {
            word = "嗚嗚嗚~在幫我一次!";
          } else if (state == 3) {
            word = "嗚嗚嗚~謝謝你!";
          } else {
            word = "現在海洋好乾淨~";
          }
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
