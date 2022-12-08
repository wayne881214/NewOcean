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
import '../map/show_map_page.dart';
import '../store/storeHomepage.dart';
import '../tasks/screen/task_issue.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int money = -2;
  String word = "救救我!!!";
  int state = 0;

  void initState() {
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    DatabaseReference TaskRef =
        FirebaseDatabase.instance.ref('Tasks/$currentUser/task1');
    TaskRef.onValue.listen((event){
      setState((){
        state = (event.snapshot.value as Map)["state"];
        if(state == 0) {
            word = "救救我!!!";
        } else if(state == 1) {
            word = "任務一提示";
        }else if(state == 2){
            word = "任務二提示";
        }else if(state == 3){
            word = "任務三提示";
        }else{
            word = "謝謝你";
        }
      });//更新 TaskCard Widget(任務卡片列表)
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
          title: Text('LV:1', style: TextStyle(color: Colors.teal)),
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
              Image.asset('assets/images/turtle.png'),
              new ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ShowMapPage();
                  }));
                },
                child: new Text('地圖'),
              ),
            ],
          ),
        ),
      );
}
